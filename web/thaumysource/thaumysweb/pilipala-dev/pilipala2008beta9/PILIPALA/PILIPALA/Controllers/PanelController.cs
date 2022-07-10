﻿using System.Linq;

using Microsoft.AspNetCore.Mvc;

using WaterLibrary.Utils;
using WaterLibrary.pilipala.Entity;
using WaterLibrary.pilipala.Component;


namespace PILIPALA.Controllers
{
    using PILIPALA.Theme;
    using PILIPALA.pilipala.plugin;

    public class PanelController : Controller
    {
        private Reader Reader;
        private Counter Counter;
        private CommentLake CommentLake;
        private ThemeHandler ThemeHandler;

        PluginInstance LightningLink;

        public PanelController(ComponentFactory compoFty, ThemeHandler ThemeHandler, PluginManager pluginManager)
        {
            Reader = compoFty.GenReader(Reader.ReadMode.CleanRead);
            Counter = compoFty.GenCounter();
            CommentLake = compoFty.GenCommentLake();

            this.ThemeHandler = ThemeHandler;
            LightningLink = pluginManager.PluginInstancePool["piliplugin.LightningLink"];
        }

        public ActionResult List(bool ajax)
        {
            string REGEXP(string s)
            {
                /* 读取主题配置文件并取得要在本页展示的文章归档 */
                var archive = ThemeHandler.Config["Pannel"][s].ToList();
                return ConvertH.ListToString(archive, '|');
            }

            var PostSet置顶 = new PostStackSet();
            foreach (PostStack item in Reader.GetPostStacks(PostProp.ArchiveName, REGEXP("ToppedArchive")))
            {
                var el = item.Peek;
                el.PropertyContainer.Add("CommentCount", CommentLake.GetCommentCount((int)el.ID));
                el.Cover = ContentProcessPipeline(el.Cover);//ll plugin
                el.Content = ContentProcessPipeline(el.Content);//ll plugin 
                PostSet置顶.Add(item);
            }

            ViewBag.置顶文章 = PostSet置顶;

            var PostSet其他 = new PostStackSet();
            var temop = Reader.GetPostStacks(PostProp.ArchiveName, REGEXP("DefaultArchive"));
            foreach (PostStack item in temop)
            {
                var el = item.Peek;
                el.PropertyContainer.Add("CommentCount", CommentLake.GetCommentCount((int)el.ID));
                el.Cover = ContentProcessPipeline(el.Cover);//ll plugin
                el.Content = ContentProcessPipeline(el.Content);//ll plugin 
                PostSet其他.Add(item);
            }
            ViewBag.其他文章 = PostSet其他;

            if (ajax == false)
            {
                ViewBag.Layout = "~/Views/Shared/_Layout.cshtml";
                return View();
            }
            else
            {
                ViewBag.Layout = null;
                return View();
            }
        }
        public ActionResult Content(int ID, bool ajax)
        {
            string REGEXP(string s = "DefaultArchive")
            {
                /* 读取主题配置文件并取得要在本页展示的文章归档 */
                var archive = ThemeHandler.Config["Pannel"][s].ToList();
                return ConvertH.ListToString(archive, '|');
            }

            ViewBag.ID = ID;//请求ID

            var PostStack = new PostStack((uint)ID);

            PostStack.Peek.Cover = ContentProcessPipeline(PostStack.Peek.Cover);//ll plugin
            PostStack.Peek.Content = ContentProcessPipeline(PostStack.Peek.Content);//ll plugin 

            ViewBag.Post = PostStack.Peek; //文章数据
            ViewBag.Post.PropertyContainer.Add("CommentCount", CommentLake.GetCommentCount(ID));//添加评论计数，可优化


            ViewBag.CommentRecordSet = CommentLake.GetComments(ID);//评论数据


            var PrevPost = new PostStack((uint)ID);
            do
            {
                PrevPost--;
            } while (PrevPost != null && PrevPost.Peek.Mode == PostRecord.ModeState.hidden);
            ViewBag.PrevPost = PrevPost;

            var NextPost = new PostStack((uint)ID);
            do
            {
                NextPost++;
            } while (NextPost != null && NextPost.Peek.Mode == PostRecord.ModeState.hidden);
            ViewBag.NextPost = NextPost;


            if (ajax == false)
            {
                ViewBag.Layout = "~/Views/Shared/_Layout.cshtml";
                return View();
            }
            else
            {
                ViewBag.Layout = null;
                return View();
            }

        }

        //内容处理管道，用于暂时接替WL管道功能
        private string ContentProcessPipeline(string content)
        {
            content = (string)LightningLink.Invoke("ApplyLink", new object[] { content });//ll plugin
            return content;
        }
    }
}
