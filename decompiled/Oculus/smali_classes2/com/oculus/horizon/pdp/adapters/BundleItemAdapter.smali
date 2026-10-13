.class public Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;
.super Ljava/lang/Object;
.source "BundleItemAdapter.java"


# instance fields
.field private final mAppIdToIAPCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mHorizontalPadding:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

.field private final mItemHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

.field private final mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

.field private final mParent:Landroid/view/ViewGroup;

.field private final mStyleTheme:Lcom/oculus/model/StyleTheme;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Landroid/view/ViewGroup;Lcom/oculus/horizon/store/BundleInstallationHelper;Lcom/oculus/libraryapi/OVRLibraryInternal;Landroid/view/LayoutInflater;Lcom/oculus/horizon/logging/OculusLogger;)V
    .locals 9

    .prologue
    .line 59
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Landroid/view/ViewGroup;Lcom/oculus/horizon/store/BundleInstallationHelper;Lcom/oculus/libraryapi/OVRLibraryInternal;Landroid/view/LayoutInflater;Lcom/oculus/model/StyleTheme;Lcom/oculus/horizon/logging/OculusLogger;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Landroid/view/ViewGroup;Lcom/oculus/horizon/store/BundleInstallationHelper;Lcom/oculus/libraryapi/OVRLibraryInternal;Landroid/view/LayoutInflater;Lcom/oculus/model/StyleTheme;Lcom/oculus/horizon/logging/OculusLogger;)V
    .locals 2
    .param p7    # Lcom/oculus/model/StyleTheme;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItems:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItemHeaders:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mAppIdToIAPCount:Ljava/util/Map;

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mErrors:Ljava/util/Set;

    .line 71
    iput-object p1, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 72
    iput-object p2, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    .line 73
    iput-object p3, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mParent:Landroid/view/ViewGroup;

    .line 74
    iput-object p4, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    .line 75
    iput-object p5, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    .line 76
    iput-object p6, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    iput-object p7, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mStyleTheme:Lcom/oculus/model/StyleTheme;

    .line 78
    iput-object p8, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mParent:Landroid/view/ViewGroup;

    .line 81
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$dimen;->common_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mHorizontalPadding:I

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;)Lcom/oculus/libraryapi/OVRLibraryInternal;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/oculus/horizon/api/common/Item;)V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->parent_application:Lcom/oculus/horizon/api/common/Item;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mAppIdToIAPCount:Ljava/util/Map;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/Item;->parent_application:Lcom/oculus/horizon/api/common/Item;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 247
    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mAppIdToIAPCount:Ljava/util/Map;

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Item;->parent_application:Lcom/oculus/horizon/api/common/Item;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_1
    return-void
.end method

.method public addHeader(Lcom/oculus/horizon/api/common/Item;)V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItemHeaders:Ljava/util/Map;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    return-void
.end method

.method public clearError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mErrors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 265
    return-void
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 241
    return-void
.end method

.method public getDownloadableItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item;

    .line 181
    iget-object v3, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItemHeaders:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->isValidApplication()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 185
    :cond_1
    return-object v2
.end method

.method public getInstallingItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->getDownloadableItems()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter$2;-><init>(Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;)V

    .line 216
    invoke-static {v0, v1}, Lcom/oculus/util/collection/CollectionUtil;->mapList(Ljava/util/List;Lcom/oculus/util/collection/CollectionUtil$Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNotYetDownloadedItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->getDownloadableItems()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter$1;-><init>(Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;)V

    .line 192
    invoke-static {v0, v1}, Lcom/oculus/util/collection/CollectionUtil;->mapList(Ljava/util/List;Lcom/oculus/util/collection/CollectionUtil$Predicate;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public notifyItemChanged(I)V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->notifyItemRangeChanged(II)V

    .line 286
    return-void
.end method

.method public notifyItemChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 268
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 269
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item;

    .line 270
    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->isAppSupportedOnCurrentDevice()Z

    move-result v3

    if-nez v3, :cond_1

    .line 268
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->notifyItemChanged(I)V

    .line 278
    :cond_2
    return-void
.end method

.method public notifyItemInserted(I)V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->notifyItemRangeChanged(II)V

    .line 282
    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 3

    .prologue
    .line 289
    add-int v2, p1, p2

    .line 291
    :goto_0
    if-ge p1, v2, :cond_3

    .line 292
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 293
    if-nez v0, :cond_4

    .line 294
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItemHeaders:Ljava/util/Map;

    .line 295
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mParent:Landroid/view/ViewGroup;

    .line 296
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/oculus/horizon/pdp/view/BundleHeaderViewHolder;

    move-result-object v0

    .line 298
    :goto_1
    iget-object v1, v0, Lcom/oculus/horizon/pdp/view/BundleRowViewHolder;->itemView:Landroid/view/View;

    .line 299
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 303
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    invoke-virtual {p0, v0, p1}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->onBindViewHolder(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;I)V

    .line 306
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/oculus/horizon/pdp/view/BundleHeaderViewHolder;

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/view/BundleHeaderViewHolder;

    invoke-virtual {p0, v0, p1}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->onBindViewHolder(Lcom/oculus/horizon/pdp/view/BundleHeaderViewHolder;I)V

    .line 291
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mParent:Landroid/view/ViewGroup;

    .line 297
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->onCreateItemViewHolder(Landroid/view/ViewGroup;)Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    move-result-object v0

    goto :goto_1

    .line 310
    :cond_3
    return-void

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method

.method public onBindViewHolder(Lcom/oculus/horizon/pdp/view/BundleHeaderViewHolder;I)V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItemHeaders:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item;

    .line 161
    iget-object v1, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mAppIdToIAPCount:Ljava/util/Map;

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 162
    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/oculus/horizon/pdp/view/BundleHeaderViewHolder;->bindItem(Lcom/oculus/horizon/api/common/Item;I)V

    goto :goto_0
.end method

.method public onBindViewHolder(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;I)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItemHeaders:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/api/common/Item;

    .line 105
    const/4 v0, 0x0

    .line 109
    invoke-virtual {v1}, Lcom/oculus/horizon/api/common/Item;->isValidInAppItem()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/oculus/horizon/api/common/Item;->isValidInAppRentalItem()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    :cond_1
    invoke-virtual {p1, v1}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->bindInAppItem(Lcom/oculus/horizon/api/common/Item;)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {v1}, Lcom/oculus/horizon/api/common/Item;->isAppSupportedOnCurrentDevice()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v2

    .line 114
    if-nez v2, :cond_4

    .line 115
    iget-boolean v0, v1, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->NOT_INSTALLED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    :goto_1
    move-wide v4, v6

    .line 144
    :goto_2
    iget-object v2, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mAppIdToIAPCount:Ljava/util/Map;

    iget-object v3, v1, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 145
    if-eqz v0, :cond_6

    move-object v2, v0

    :goto_3
    iget-object v8, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mStyleTheme:Lcom/oculus/model/StyleTheme;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->bindItem(Lcom/oculus/horizon/api/common/Item;Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;Ljava/lang/Integer;JJLcom/oculus/model/StyleTheme;)V

    goto :goto_0

    .line 115
    :cond_3
    sget-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->NOT_PURCHASED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    goto :goto_1

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mErrors:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    sget-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->INSTALL_FAILED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    move-wide v4, v6

    goto :goto_2

    .line 122
    :cond_5
    sget-object v0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter$3;->$SwitchMap$com$oculus$library$model$AppStatus:[I

    iget-object v3, v2, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    invoke-virtual {v3}, Lcom/oculus/library/model/AppStatus;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :pswitch_0
    sget-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->NOT_INSTALLED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    move-wide v4, v6

    .line 125
    goto :goto_2

    .line 128
    :pswitch_1
    sget-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->DOWNLOADING:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    .line 129
    iget-wide v4, v2, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    .line 130
    iget-wide v6, v2, Lcom/oculus/library/model/App;->downloadSizeBytes:J

    goto :goto_2

    .line 134
    :pswitch_2
    sget-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->INSTALLING:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    move-wide v4, v6

    .line 135
    goto :goto_2

    .line 137
    :pswitch_3
    sget-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->INSTALLED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    move-wide v4, v6

    .line 138
    goto :goto_2

    .line 145
    :cond_6
    sget-object v2, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->NOT_SUPPORTED:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    goto :goto_3

    :cond_7
    move-wide v4, v6

    goto :goto_2

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Lcom/oculus/horizon/pdp/view/BundleHeaderViewHolder;
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/oculus/horizon/R$layout;->bundle_item_header_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/oculus/horizon/pdp/view/BundleHeaderViewHolder;

    invoke-direct {v1, v0}, Lcom/oculus/horizon/pdp/view/BundleHeaderViewHolder;-><init>(Landroid/view/View;)V

    .line 96
    return-object v1
.end method

.method public onCreateItemViewHolder(Landroid/view/ViewGroup;)Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;
    .locals 6

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/oculus/horizon/R$layout;->store_horizontal_product_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 86
    new-instance v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v4, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    iget-object v5, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Landroid/view/View;Lcom/oculus/horizon/store/BundleInstallationHelper;Lcom/oculus/horizon/logging/OculusLogger;)V

    .line 89
    iget v1, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mHorizontalPadding:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->setHorizontalPadding(I)V

    .line 90
    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->mErrors:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    return-void
.end method
