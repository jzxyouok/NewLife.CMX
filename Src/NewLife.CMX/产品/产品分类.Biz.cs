﻿﻿using System;
using System.ComponentModel;
using XCode;

namespace NewLife.CMX
{
    /// <summary>产品分类</summary>
    public partial class ProductCategory : ModelCategoryEntity<ProductCategory>
    {
        #region 对象操作﻿

        /// <summary>验证数据，通过抛出异常的方式提示验证失败。</summary>
        /// <param name="isNew"></param>
        public override void Valid(Boolean isNew)
        {
            // 这里验证参数范围，建议抛出参数异常，指定参数名，前端用户界面可以捕获参数异常并聚焦到对应的参数输入框
            //if (String.IsNullOrEmpty(Name)) throw new ArgumentNullException(_.Name, _.Name.DisplayName + "无效！");
            //if (!isNew && ID < 1) throw new ArgumentOutOfRangeException(_.ID, _.ID.DisplayName + "必须大于0！");

            // 建议先调用基类方法，基类方法会对唯一索引的数据进行验证
            base.Valid(isNew);

            // 在新插入数据或者修改了指定字段时进行唯一性验证，CheckExist内部抛出参数异常
            //if (isNew || Dirtys[__.Name]) CheckExist(__.Name);

        }

        ///// <summary>首次连接数据库时初始化数据，仅用于实体类重载，用户不应该调用该方法</summary>
        //[EditorBrowsable(EditorBrowsableState.Never)]
        //protected override void InitData()
        //{
        //    base.InitData();

        //    // InitData一般用于当数据表没有数据时添加一些默认数据，该实体类的任何第一次数据库操作都会触发该方法，默认异步调用
        //    // Meta.Count是快速取得表记录数
        //    if (Meta.Count > 0) return;

        //    // 需要注意的是，如果该方法调用了其它实体类的首次数据库操作，目标实体类的数据初始化将会在同一个线程完成
        //    if (XTrace.Debug) XTrace.WriteLine("开始初始化{0}[{1}]数据……", typeof(ProductCategory).Name, Meta.Table.DataTable.DisplayName);

        //    var entity = new ProductCategory();
        //    entity.Name = "abc";
        //    entity.ParentID = 0;
        //    entity.Sort = 0;
        //    entity.Remark = "abc";
        //    entity.IsEnd = true;
        //    entity.Insert();

        //    if (XTrace.Debug) XTrace.WriteLine("完成初始化{0}[{1}]数据！", typeof(ProductCategory).Name, Meta.Table.DataTable.DisplayName);
        //}


        ///// <summary>已重载。基类先调用Valid(true)验证数据，然后在事务保护内调用OnInsert</summary>
        ///// <returns></returns>
        //public override Int32 Insert()
        //{
        //    return base.Insert();
        //}

        ///// <summary>已重载。在事务保护范围内处理业务，位于Valid之后</summary>
        ///// <returns></returns>
        //protected override Int32 OnInsert()
        //{
        //    return base.OnInsert();
        //}
        #endregion

        #region 扩展属性﻿
        /// <summary>父级名称</summary>
        public String ParentName { get { return Parent != null ? Parent.Name : ""; } }
        #endregion

        #region 扩展查询﻿
        /// <summary>根据名称、父类查找</summary>
        /// <param name="name">名称</param>
        /// <param name="parentid">父类</param>
        /// <returns></returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static ProductCategory FindByNameAndParentID(String name, Int32 parentid)
        {
            if (Meta.Count >= 1000)
                return Find(new String[] { __.Name, __.ParentID }, new Object[] { name, parentid });
            else // 实体缓存
                return Meta.Cache.Entities.Find(e => e.Name == name && e.ParentID == parentid);
        }

        /// <summary>根据名称查找</summary>
        /// <param name="name">名称</param>
        /// <returns></returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static EntityList<ProductCategory> FindAllByName(String name)
        {
            if (Meta.Count >= 1000)
                return FindAll(__.Name, name);
            else // 实体缓存
                return Meta.Cache.Entities.FindAll(__.Name, name);
        }

        /// <summary>根据父类查找</summary>
        /// <param name="parentid">父类</param>
        /// <returns></returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static EntityList<ProductCategory> FindAllByParentID(Int32 parentid)
        {
            if (Meta.Count >= 1000)
                return FindAll(__.ParentID, parentid);
            else // 实体缓存
                return Meta.Cache.Entities.FindAll(__.ParentID, parentid);
        }

        /// <summary>根据编号查找</summary>
        /// <param name="id">编号</param>
        /// <returns></returns>
        [DataObjectMethod(DataObjectMethodType.Select, false)]
        public static ProductCategory FindByID(Int32 id)
        {
            if (Meta.Count >= 1000)
                return Find(__.ID, id);
            else // 实体缓存
                return Meta.Cache.Entities.Find(__.ID, id);
            // 单对象缓存
            //return Meta.SingleCache[id];
        }

        //基类中实现
        ///// <summary>
        ///// 
        ///// </summary>
        ///// <param name="parentKey"></param>
        ///// <returns></returns>
        //public static Dictionary<String, String> FindChildsByNoParent(Int32 parentKey)
        //{
        //    EntityList<ProductCategory> entitylist = ProductCategory.FindAllChildsNoParent(parentKey);

        //    Dictionary<String, String> dic = new Dictionary<string, string>();

        //    foreach (ProductCategory item in entitylist)
        //    {
        //        dic.Add(item.ID.ToString(), item.TreeNodeName);
        //    }

        //    return dic;
        //}
        #endregion

        #region 高级查询
        #endregion

        #region 扩展操作
        #endregion

        #region 业务
        #endregion
    }
}