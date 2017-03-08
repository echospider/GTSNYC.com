﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="GTSNYC")]
public partial class DatabaseDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region Extensibility Method Definitions
  partial void OnCreated();
  partial void InsertContentPage(ContentPage instance);
  partial void UpdateContentPage(ContentPage instance);
  partial void DeleteContentPage(ContentPage instance);
  partial void InsertProduct(Product instance);
  partial void UpdateProduct(Product instance);
  partial void DeleteProduct(Product instance);
  partial void InsertCategory(Category instance);
  partial void UpdateCategory(Category instance);
  partial void DeleteCategory(Category instance);
  #endregion
	
	public DatabaseDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["GTSNYCConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public DatabaseDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DatabaseDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DatabaseDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DatabaseDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<ContentPage> ContentPages
	{
		get
		{
			return this.GetTable<ContentPage>();
		}
	}
	
	public System.Data.Linq.Table<Product> Products
	{
		get
		{
			return this.GetTable<Product>();
		}
	}
	
	public System.Data.Linq.Table<Category> Categories
	{
		get
		{
			return this.GetTable<Category>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Pages")]
public partial class ContentPage : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _PageId;
	
	private string _Title;
	
	private System.Data.Linq.Link<string> _MetaDescription;
	
	private System.Data.Linq.Link<string> _MetaKeywords;
	
	private System.Data.Linq.Link<string> _Summery;
	
	private System.Data.Linq.Link<string> _Body;
	
	private System.DateTime _DateCreated;
	
	private byte _DisplayOrder;
	
	private string _UniqueName;
	
	private System.Data.Linq.Link<string> _PageTitle;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnPageIdChanging(int value);
    partial void OnPageIdChanged();
    partial void OnTitleChanging(string value);
    partial void OnTitleChanged();
    partial void OnMetaDescriptionChanging(string value);
    partial void OnMetaDescriptionChanged();
    partial void OnMetaKeywordsChanging(string value);
    partial void OnMetaKeywordsChanged();
    partial void OnSummeryChanging(string value);
    partial void OnSummeryChanged();
    partial void OnBodyChanging(string value);
    partial void OnBodyChanged();
    partial void OnDateCreatedChanging(System.DateTime value);
    partial void OnDateCreatedChanged();
    partial void OnDisplayOrderChanging(byte value);
    partial void OnDisplayOrderChanged();
    partial void OnUniqueNameChanging(string value);
    partial void OnUniqueNameChanged();
    partial void OnPageTitleChanging(string value);
    partial void OnPageTitleChanged();
    #endregion
	
	public ContentPage()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PageId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int PageId
	{
		get
		{
			return this._PageId;
		}
		set
		{
			if ((this._PageId != value))
			{
				this.OnPageIdChanging(value);
				this.SendPropertyChanging();
				this._PageId = value;
				this.SendPropertyChanged("PageId");
				this.OnPageIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Title", DbType="VarChar(150)")]
	public string Title
	{
		get
		{
			return this._Title;
		}
		set
		{
			if ((this._Title != value))
			{
				this.OnTitleChanging(value);
				this.SendPropertyChanging();
				this._Title = value;
				this.SendPropertyChanged("Title");
				this.OnTitleChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MetaDescription", DbType="NVarChar(150)")]
	public string MetaDescription
	{
		get
		{
			return this._MetaDescription.Value;
		}
		set
		{
			if ((this._MetaDescription.Value != value))
			{
				this.OnMetaDescriptionChanging(value);
				this.SendPropertyChanging();
				this._MetaDescription.Value = value;
				this.SendPropertyChanged("MetaDescription");
				this.OnMetaDescriptionChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_MetaKeywords", DbType="NVarChar(150)")]
	public string MetaKeywords
	{
		get
		{
			return this._MetaKeywords.Value;
		}
		set
		{
			if ((this._MetaKeywords.Value != value))
			{
				this.OnMetaKeywordsChanging(value);
				this.SendPropertyChanging();
				this._MetaKeywords.Value = value;
				this.SendPropertyChanged("MetaKeywords");
				this.OnMetaKeywordsChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Summery", DbType="NVarChar(2048)")]
	public string Summery
	{
		get
		{
			return this._Summery.Value;
		}
		set
		{
			if ((this._Summery.Value != value))
			{
				this.OnSummeryChanging(value);
				this.SendPropertyChanging();
				this._Summery.Value = value;
				this.SendPropertyChanged("Summery");
				this.OnSummeryChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Body", DbType="NText", UpdateCheck=UpdateCheck.Never)]
	public string Body
	{
		get
		{
			return this._Body.Value;
		}
		set
		{
			if ((this._Body.Value != value))
			{
				this.OnBodyChanging(value);
				this.SendPropertyChanging();
				this._Body.Value = value;
				this.SendPropertyChanged("Body");
				this.OnBodyChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DateCreated", DbType="DateTime NOT NULL", IsDbGenerated=true, IsVersion=true)]
	public System.DateTime DateCreated
	{
		get
		{
			return this._DateCreated;
		}
		set
		{
			if ((this._DateCreated != value))
			{
				this.OnDateCreatedChanging(value);
				this.SendPropertyChanging();
				this._DateCreated = value;
				this.SendPropertyChanged("DateCreated");
				this.OnDateCreatedChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DisplayOrder", DbType="TinyInt NOT NULL")]
	public byte DisplayOrder
	{
		get
		{
			return this._DisplayOrder;
		}
		set
		{
			if ((this._DisplayOrder != value))
			{
				this.OnDisplayOrderChanging(value);
				this.SendPropertyChanging();
				this._DisplayOrder = value;
				this.SendPropertyChanged("DisplayOrder");
				this.OnDisplayOrderChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UniqueName", DbType="VarChar(50)")]
	public string UniqueName
	{
		get
		{
			return this._UniqueName;
		}
		set
		{
			if ((this._UniqueName != value))
			{
				this.OnUniqueNameChanging(value);
				this.SendPropertyChanging();
				this._UniqueName = value;
				this.SendPropertyChanged("UniqueName");
				this.OnUniqueNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_PageTitle", DbType="VarChar(150)")]
	public string PageTitle
	{
		get
		{
			return this._PageTitle.Value;
		}
		set
		{
			if ((this._PageTitle.Value != value))
			{
				this.OnPageTitleChanging(value);
				this.SendPropertyChanging();
				this._PageTitle.Value = value;
				this.SendPropertyChanged("PageTitle");
				this.OnPageTitleChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Products")]
public partial class Product : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _ProductId;
	
	private string _ProductName;
	
	private string _Summery;
	
	private string _Body;
	
	private System.DateTime _DateCreated;
	
	private byte _DisplayOrder;
	
	private int _CategoryId;
	
	private string _UniqueName;
	
	private decimal _Price;
	
	private string _ImageUrl;
	
	private string _Writeup;
	
	private string _Contract;
	
	private bool _IsFeatured;
	
	private string _FileUrl;
	
	private EntityRef<Category> _Category;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnProductIdChanging(int value);
    partial void OnProductIdChanged();
    partial void OnProductNameChanging(string value);
    partial void OnProductNameChanged();
    partial void OnSummeryChanging(string value);
    partial void OnSummeryChanged();
    partial void OnBodyChanging(string value);
    partial void OnBodyChanged();
    partial void OnDateCreatedChanging(System.DateTime value);
    partial void OnDateCreatedChanged();
    partial void OnDisplayOrderChanging(byte value);
    partial void OnDisplayOrderChanged();
    partial void OnCategoryIdChanging(int value);
    partial void OnCategoryIdChanged();
    partial void OnUniqueNameChanging(string value);
    partial void OnUniqueNameChanged();
    partial void OnPriceChanging(decimal value);
    partial void OnPriceChanged();
    partial void OnImageUrlChanging(string value);
    partial void OnImageUrlChanged();
    partial void OnWriteupChanging(string value);
    partial void OnWriteupChanged();
    partial void OnContractChanging(string value);
    partial void OnContractChanged();
    partial void OnIsFeaturedChanging(bool value);
    partial void OnIsFeaturedChanged();
    partial void OnFileUrlChanging(string value);
    partial void OnFileUrlChanged();
    #endregion
	
	public Product()
	{
		this._Category = default(EntityRef<Category>);
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ProductId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int ProductId
	{
		get
		{
			return this._ProductId;
		}
		set
		{
			if ((this._ProductId != value))
			{
				this.OnProductIdChanging(value);
				this.SendPropertyChanging();
				this._ProductId = value;
				this.SendPropertyChanged("ProductId");
				this.OnProductIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ProductName", DbType="VarChar(150)")]
	public string ProductName
	{
		get
		{
			return this._ProductName;
		}
		set
		{
			if ((this._ProductName != value))
			{
				this.OnProductNameChanging(value);
				this.SendPropertyChanging();
				this._ProductName = value;
				this.SendPropertyChanged("ProductName");
				this.OnProductNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Summery", DbType="NVarChar(512)")]
	public string Summery
	{
		get
		{
			return this._Summery;
		}
		set
		{
			if ((this._Summery != value))
			{
				this.OnSummeryChanging(value);
				this.SendPropertyChanging();
				this._Summery = value;
				this.SendPropertyChanged("Summery");
				this.OnSummeryChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Body", DbType="NText", UpdateCheck=UpdateCheck.Never)]
	public string Body
	{
		get
		{
			return this._Body;
		}
		set
		{
			if ((this._Body != value))
			{
				this.OnBodyChanging(value);
				this.SendPropertyChanging();
				this._Body = value;
				this.SendPropertyChanged("Body");
				this.OnBodyChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DateCreated", DbType="DateTime NOT NULL", IsDbGenerated=true)]
	public System.DateTime DateCreated
	{
		get
		{
			return this._DateCreated;
		}
		set
		{
			if ((this._DateCreated != value))
			{
				this.OnDateCreatedChanging(value);
				this.SendPropertyChanging();
				this._DateCreated = value;
				this.SendPropertyChanged("DateCreated");
				this.OnDateCreatedChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DisplayOrder", DbType="TinyInt NOT NULL", IsDbGenerated=true)]
	public byte DisplayOrder
	{
		get
		{
			return this._DisplayOrder;
		}
		set
		{
			if ((this._DisplayOrder != value))
			{
				this.OnDisplayOrderChanging(value);
				this.SendPropertyChanging();
				this._DisplayOrder = value;
				this.SendPropertyChanged("DisplayOrder");
				this.OnDisplayOrderChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CategoryId", DbType="Int NOT NULL")]
	public int CategoryId
	{
		get
		{
			return this._CategoryId;
		}
		set
		{
			if ((this._CategoryId != value))
			{
				if (this._Category.HasLoadedOrAssignedValue)
				{
					throw new System.Data.Linq.ForeignKeyReferenceAlreadyHasValueException();
				}
				this.OnCategoryIdChanging(value);
				this.SendPropertyChanging();
				this._CategoryId = value;
				this.SendPropertyChanged("CategoryId");
				this.OnCategoryIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UniqueName", DbType="VarChar(50)")]
	public string UniqueName
	{
		get
		{
			return this._UniqueName;
		}
		set
		{
			if ((this._UniqueName != value))
			{
				this.OnUniqueNameChanging(value);
				this.SendPropertyChanging();
				this._UniqueName = value;
				this.SendPropertyChanged("UniqueName");
				this.OnUniqueNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Price", DbType="Money NOT NULL")]
	public decimal Price
	{
		get
		{
			return this._Price;
		}
		set
		{
			if ((this._Price != value))
			{
				this.OnPriceChanging(value);
				this.SendPropertyChanging();
				this._Price = value;
				this.SendPropertyChanged("Price");
				this.OnPriceChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_ImageUrl", DbType="VarChar(150)")]
	public string ImageUrl
	{
		get
		{
			return this._ImageUrl;
		}
		set
		{
			if ((this._ImageUrl != value))
			{
				this.OnImageUrlChanging(value);
				this.SendPropertyChanging();
				this._ImageUrl = value;
				this.SendPropertyChanged("ImageUrl");
				this.OnImageUrlChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Writeup", DbType="NText", UpdateCheck=UpdateCheck.Never)]
	public string Writeup
	{
		get
		{
			return this._Writeup;
		}
		set
		{
			if ((this._Writeup != value))
			{
				this.OnWriteupChanging(value);
				this.SendPropertyChanging();
				this._Writeup = value;
				this.SendPropertyChanged("Writeup");
				this.OnWriteupChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Contract", DbType="NText", UpdateCheck=UpdateCheck.Never)]
	public string Contract
	{
		get
		{
			return this._Contract;
		}
		set
		{
			if ((this._Contract != value))
			{
				this.OnContractChanging(value);
				this.SendPropertyChanging();
				this._Contract = value;
				this.SendPropertyChanged("Contract");
				this.OnContractChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_IsFeatured", DbType="bit NOT NULL")]
	public bool IsFeatured
	{
		get
		{
			return this._IsFeatured;
		}
		set
		{
			if ((this._IsFeatured != value))
			{
				this.OnIsFeaturedChanging(value);
				this.SendPropertyChanging();
				this._IsFeatured = value;
				this.SendPropertyChanged("IsFeatured");
				this.OnIsFeaturedChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_FileUrl", DbType="VarChar(150)")]
	public string FileUrl
	{
		get
		{
			return this._FileUrl;
		}
		set
		{
			if ((this._FileUrl != value))
			{
				this.OnFileUrlChanging(value);
				this.SendPropertyChanging();
				this._FileUrl = value;
				this.SendPropertyChanged("FileUrl");
				this.OnFileUrlChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Category_Product", Storage="_Category", ThisKey="CategoryId", OtherKey="CategoryId", IsForeignKey=true)]
	public Category Category
	{
		get
		{
			return this._Category.Entity;
		}
		set
		{
			Category previousValue = this._Category.Entity;
			if (((previousValue != value) 
						|| (this._Category.HasLoadedOrAssignedValue == false)))
			{
				this.SendPropertyChanging();
				if ((previousValue != null))
				{
					this._Category.Entity = null;
					previousValue.Products.Remove(this);
				}
				this._Category.Entity = value;
				if ((value != null))
				{
					value.Products.Add(this);
					this._CategoryId = value.CategoryId;
				}
				else
				{
					this._CategoryId = default(int);
				}
				this.SendPropertyChanged("Category");
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.Categories")]
public partial class Category : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private int _CategoryId;
	
	private string _CategoryName;
	
	private System.DateTime _DateAdded;
	
	private byte _DisplayOrder;
	
	private string _UniqueName;
	
	private EntitySet<Product> _Products;
	
    #region Extensibility Method Definitions
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnCategoryIdChanging(int value);
    partial void OnCategoryIdChanged();
    partial void OnCategoryNameChanging(string value);
    partial void OnCategoryNameChanged();
    partial void OnDateAddedChanging(System.DateTime value);
    partial void OnDateAddedChanged();
    partial void OnDisplayOrderChanging(byte value);
    partial void OnDisplayOrderChanged();
    partial void OnUniqueNameChanging(string value);
    partial void OnUniqueNameChanged();
    #endregion
	
	public Category()
	{
		this._Products = new EntitySet<Product>(new Action<Product>(this.attach_Products), new Action<Product>(this.detach_Products));
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CategoryId", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
	public int CategoryId
	{
		get
		{
			return this._CategoryId;
		}
		set
		{
			if ((this._CategoryId != value))
			{
				this.OnCategoryIdChanging(value);
				this.SendPropertyChanging();
				this._CategoryId = value;
				this.SendPropertyChanged("CategoryId");
				this.OnCategoryIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_CategoryName", DbType="VarChar(50)")]
	public string CategoryName
	{
		get
		{
			return this._CategoryName;
		}
		set
		{
			if ((this._CategoryName != value))
			{
				this.OnCategoryNameChanging(value);
				this.SendPropertyChanging();
				this._CategoryName = value;
				this.SendPropertyChanged("CategoryName");
				this.OnCategoryNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DateAdded", DbType="DateTime NOT NULL")]
	public System.DateTime DateAdded
	{
		get
		{
			return this._DateAdded;
		}
		set
		{
			if ((this._DateAdded != value))
			{
				this.OnDateAddedChanging(value);
				this.SendPropertyChanging();
				this._DateAdded = value;
				this.SendPropertyChanged("DateAdded");
				this.OnDateAddedChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_DisplayOrder", DbType="TinyInt NOT NULL")]
	public byte DisplayOrder
	{
		get
		{
			return this._DisplayOrder;
		}
		set
		{
			if ((this._DisplayOrder != value))
			{
				this.OnDisplayOrderChanging(value);
				this.SendPropertyChanging();
				this._DisplayOrder = value;
				this.SendPropertyChanged("DisplayOrder");
				this.OnDisplayOrderChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_UniqueName", DbType="VarChar(50)")]
	public string UniqueName
	{
		get
		{
			return this._UniqueName;
		}
		set
		{
			if ((this._UniqueName != value))
			{
				this.OnUniqueNameChanging(value);
				this.SendPropertyChanging();
				this._UniqueName = value;
				this.SendPropertyChanged("UniqueName");
				this.OnUniqueNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.AssociationAttribute(Name="Category_Product", Storage="_Products", ThisKey="CategoryId", OtherKey="CategoryId")]
	public EntitySet<Product> Products
	{
		get
		{
			return this._Products;
		}
		set
		{
			this._Products.Assign(value);
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
	
	private void attach_Products(Product entity)
	{
		this.SendPropertyChanging();
		entity.Category = this;
	}
	
	private void detach_Products(Product entity)
	{
		this.SendPropertyChanging();
		entity.Category = null;
	}
}
#pragma warning restore 1591
