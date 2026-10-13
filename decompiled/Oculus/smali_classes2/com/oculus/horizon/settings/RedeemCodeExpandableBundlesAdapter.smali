.class public Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "RedeemCodeExpandableBundlesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter$BundleSelectedListener;
    }
.end annotation


# instance fields
.field private mBundleIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBundleIdsToBundlesHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/api/common/ParcelableBundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBundleInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

.field private mBundleSelectedListener:Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter$BundleSelectedListener;

.field private final mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

.field private final mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Ljava/util/List;Ljava/util/HashMap;Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter$BundleSelectedListener;Lcom/oculus/horizon/store/BundleInstallationHelper;Lcom/oculus/libraryapi/OVRLibraryInternal;Lcom/oculus/horizon/logging/OculusLogger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcom/oculus/horizon/fragmentfactory/FragmentFactory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/api/common/ParcelableBundle;",
            ">;",
            "Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter$BundleSelectedListener;",
            "Lcom/oculus/horizon/store/BundleInstallationHelper;",
            "Lcom/oculus/libraryapi/OVRLibraryInternal;",
            "Lcom/oculus/horizon/logging/OculusLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 50
    iput-object p2, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    .line 51
    iput-object p3, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mBundleIds:Ljava/util/List;

    .line 52
    iput-object p4, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mBundleIdsToBundlesHashMap:Ljava/util/HashMap;

    .line 53
    iput-object p5, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mBundleSelectedListener:Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter$BundleSelectedListener;

    .line 54
    iput-object p6, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mBundleInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    .line 55
    iput-object p7, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    .line 56
    iput-object p8, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->getChild(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChild(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/ParcelableItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mBundleIdsToBundlesHashMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mBundleIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/ParcelableBundle;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/ParcelableBundle;->bundleItems:Ljava/util/List;

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 153
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 100
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 101
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 102
    sget v1, Lcom/oculus/horizon/R$layout;->settings_redeem_code_activated_bundle_linear_layout:I

    const/4 v2, 0x0

    .line 103
    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 105
    new-instance v0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v2, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    sget v3, Lcom/oculus/horizon/R$id;->content_table:I

    .line 109
    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mBundleInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    iget-object v5, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    .line 112
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget-object v7, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-direct/range {v0 .. v7}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Landroid/view/ViewGroup;Lcom/oculus/horizon/store/BundleInstallationHelper;Lcom/oculus/libraryapi/OVRLibraryInternal;Landroid/view/LayoutInflater;Lcom/oculus/horizon/logging/OculusLogger;)V

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->getChild(II)Ljava/util/List;

    move-result-object v1

    .line 115
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/api/common/ParcelableItem;

    .line 116
    invoke-virtual {v1}, Lcom/oculus/horizon/api/common/ParcelableItem;->isValidBasedOnType()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->add(Lcom/oculus/horizon/api/common/Item;)V

    .line 118
    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->notifyItemInserted(I)V

    goto :goto_0

    .line 121
    :cond_1
    return-object v8
.end method

.method public getChildrenCount(I)I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->getGroup(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mBundleIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mBundleIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 143
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 62
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 63
    if-nez p3, :cond_0

    .line 64
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 65
    sget v1, Lcom/oculus/horizon/R$layout;->settings_redeem_code_activated_bundle_header_text_view:I

    .line 66
    invoke-virtual {v0, v1, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 69
    :cond_0
    sget v0, Lcom/oculus/horizon/R$id;->header_text_view:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    sget v1, Lcom/oculus/horizon/R$id;->description_text_view:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 72
    iget-object v5, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mBundleIds:Ljava/util/List;

    iget-object v6, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mBundleIdsToBundlesHashMap:Ljava/util/HashMap;

    .line 73
    invoke-static {v2, v5, v6, p1}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getBundleName(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mBundleIdsToBundlesHashMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mBundleIds:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/horizon/api/common/ParcelableBundle;

    .line 78
    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/oculus/horizon/api/common/ParcelableBundle;->displayShortDescription:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 79
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v2, v2, Lcom/oculus/horizon/api/common/ParcelableBundle;->displayShortDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 86
    aget-object v5, v2, v7

    if-eqz p2, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 87
    aget-object v1, v2, v4

    aget-object v3, v2, v3

    aget-object v4, v2, v7

    const/4 v5, 0x3

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 90
    return-object p3

    .line 82
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v4

    .line 86
    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mBundleSelectedListener:Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter$BundleSelectedListener;

    invoke-interface {v0, p1}, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter$BundleSelectedListener;->onBundleCollapsed(I)V

    .line 134
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;->mBundleSelectedListener:Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter$BundleSelectedListener;

    invoke-interface {v0, p1}, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter$BundleSelectedListener;->onBundleExpanded(I)V

    .line 128
    return-void
.end method
