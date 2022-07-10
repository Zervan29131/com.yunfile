﻿using Microsoft.AspNetCore.Mvc;

using WaterLibrary.pilipala.Entity;
using WaterLibrary.pilipala.Component;


namespace PILIPALA.API
{
    using PILIPALA.Models.Form;

    public class Guest : Controller
    {
        public Reader Reader;
        public Counter Counter;
        public CommentLake CommentLake;

        public Guest(ComponentFactory compoFty)
        {
            Reader = compoFty.GenReader(Reader.ReadMode.DirtyRead, true);
            Counter = compoFty.GenCounter();
            CommentLake = compoFty.GenCommentLake();
        }

        /// <summary>
        /// 星星计数减一
        /// </summary>
        /// <param name="ID">文章序列号</param>
        [HttpPost]
        public int Decrease_StarCount_by_PostID(int PostID)
        {
            //int StarCount = Convert.ToInt32(Reader.GetPostProp(PostID, PostProp.StarCount));
            //Counter.SetStarCount(PostID, StarCount - 1);

            var peek = new PostStack((uint)PostID).Peek;
            peek.StarCount -= 1;

            return (int)peek.StarCount;
        }
        /// <summary>
        /// 星星计数加一
        /// </summary>
        /// <param name="ID">文章序列号</param>
        [HttpPost]
        public int Increase_StarCount_by_PostID(int PostID)
        {
            //int StarCount = Convert.ToInt32(Reader.GetPostProp(PostID, PostProp.StarCount));
            //Counter.SetStarCount(PostID, StarCount + 1);

            var peek = new PostStack((uint)PostID).Peek;
            peek.StarCount += 1;

            return (int)peek.StarCount;
        }
        /// <summary>
        /// 浏览计数加一
        /// </summary>
        /// <param name="ID">文章序列号</param>

        [HttpPost]
        public int Increase_UVCount_by_PostID(int PostID)
        {

            //int UVCount = Convert.ToInt32(Reader.GetPostProp(PostID, PostProp.UVCount));
            //Counter.SetUVCount(PostID, UVCount + 1);

            var peek = new PostStack((uint)PostID).Peek;
            peek.UVCount += 1;

            return (int)peek.UVCount;
        }

        /// <summary>
        /// 取得内核版本
        /// </summary>
        /// <returns>返回内核版本</returns>
        [HttpPost]
        public string Get_core_version()
        {
            return WaterLibrary.Assembly.Version;
        }

        /// <summary>
        /// 评论验证
        /// </summary>
        /// <param name="PostID"></param>
        /// <param name="HEAD"></param>
        /// <param name="Content"></param>
        /// <param name="User"></param>
        /// <param name="Email"></param>
        /// <param name="WebSite"></param>
        /// <returns></returns>
        [HttpPost]
        public string CommentLakeCaptcha(CommentModel CommentModel)
        {
            CommentLake.NewComment(new CommentRecord()
            {
                PostID = CommentModel.PostID,
                User = CommentModel.User,
                Email = CommentModel.Email,
                Content = CommentModel.Content,
                WebSite = CommentModel.WebSite,
                HEAD = CommentModel.HEAD
            });

            return "CommentLake : 提交成功";
        }
    }
}
