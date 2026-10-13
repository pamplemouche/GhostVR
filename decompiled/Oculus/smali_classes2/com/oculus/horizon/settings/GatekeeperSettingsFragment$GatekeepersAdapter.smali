.class final Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GatekeeperSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GatekeepersAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter",
        "<",
        "Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mGatekeeperRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;)V
    .locals 1

    .prologue
    .line 177
    iput-object p1, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 175
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->mGatekeeperRows:Ljava/util/List;

    .line 178
    invoke-direct {p0}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->getGatekeeperRows()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->mGatekeeperRows:Ljava/util/List;

    .line 179
    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->onGatekeeperRowClicked(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;)V

    return-void
.end method

.method private getGatekeeperRows()Lcom/google/common/collect/ImmutableList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    iget-object v0, v0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mGatekeeperRegistry:Lcom/oculus/config/gatekeeper/GatekeeperRegistry;

    .line 183
    invoke-interface {v0}, Lcom/oculus/config/gatekeeper/GatekeeperRegistry;->getRegisteredGatekeepers()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    .line 185
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v8

    .line 186
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 187
    invoke-virtual {v7, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    new-instance v0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;

    iget-object v1, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    iget-object v3, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    iget-object v3, v3, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mConfigController:Lcom/oculus/config/ConfigController;

    .line 191
    invoke-virtual {v3, v2}, Lcom/oculus/config/ConfigController;->getGatekeeper(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    iget-object v4, v4, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mConfigController:Lcom/oculus/config/ConfigController;

    .line 192
    invoke-virtual {v4, v2}, Lcom/oculus/config/ConfigController;->isGatekeeperFetched(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    iget-object v5, v5, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mConfigController:Lcom/oculus/config/ConfigController;

    .line 193
    invoke-virtual {v5, v2}, Lcom/oculus/config/ConfigController;->isGatekeeperOverrideEnabled(Ljava/lang/String;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;-><init>(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;Ljava/lang/String;ZZZ)V

    .line 188
    invoke-virtual {v8, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 186
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private getSubtitleColor(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;)I
    .locals 2

    .prologue
    .line 228
    iget-boolean v0, p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->isOverrideEnabled:Z

    if-eqz v0, :cond_0

    .line 229
    const/high16 v0, -0x10000

    .line 236
    :goto_0
    return v0

    .line 232
    :cond_0
    iget-boolean v0, p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->isFetched:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    iget-object v0, v0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    .line 233
    invoke-virtual {v0}, Lcom/oculus/horizon/style/StyleManager;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v0

    sget-object v1, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    iget-object v0, v0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/oculus/horizon/R$color;->oculus_black_2:I

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    iget-object v0, v0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/oculus/horizon/R$color;->oculus_black_10:I

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    iget-object v0, v0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/oculus/horizon/R$color;->oculus_black_4:I

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private onGatekeeperRowClicked(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;)V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->newInstance(Ljava/lang/String;)Lcom/oculus/horizon/settings/OverrideGkDialogFragment;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 242
    iget-object v1, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "override_gk_dialog_fragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 243
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->mGatekeeperRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 173
    check-cast p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->onBindViewHolder(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperViewHolder;I)V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->mGatekeeperRows:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;

    .line 214
    iget-object v1, p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperViewHolder;->rowView:Lcom/oculus/horizon/widget/CustomSetting;

    iget-object v2, v0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/CustomSetting;->setTitle(Ljava/lang/String;)V

    .line 215
    iget-object v1, p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperViewHolder;->rowView:Lcom/oculus/horizon/widget/CustomSetting;

    iget-boolean v2, v0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->isEnabled:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/CustomSetting;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperViewHolder;->rowView:Lcom/oculus/horizon/widget/CustomSetting;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->getSubtitleColor(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/CustomSetting;->setSubtitleColor(I)V

    .line 218
    iget-object v1, p1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperViewHolder;->rowView:Lcom/oculus/horizon/widget/CustomSetting;

    new-instance v2, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter$1;-><init>(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;)V

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/CustomSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperViewHolder;
    .locals 4

    .prologue
    .line 201
    new-instance v0, Lcom/oculus/horizon/widget/CustomSetting;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/widget/CustomSetting;-><init>(Landroid/content/Context;)V

    .line 203
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomSetting;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v1, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperViewHolder;

    iget-object v2, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->this$0:Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;

    invoke-direct {v1, v2, v0}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperViewHolder;-><init>(Lcom/oculus/horizon/settings/GatekeeperSettingsFragment;Lcom/oculus/horizon/widget/CustomSetting;)V

    return-object v1
.end method

.method public update()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 257
    invoke-direct {p0}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->getGatekeeperRows()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 258
    iget-object v0, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->mGatekeeperRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    move v3, v2

    .line 261
    :goto_1
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 262
    invoke-virtual {v4, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;

    iget-object v5, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->mGatekeeperRows:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeeperRow;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 264
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->notifyItemChanged(I)V

    move v0, v1

    .line 261
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 258
    goto :goto_0

    .line 268
    :cond_1
    if-eqz v3, :cond_2

    .line 269
    iput-object v4, p0, Lcom/oculus/horizon/settings/GatekeeperSettingsFragment$GatekeepersAdapter;->mGatekeeperRows:Ljava/util/List;

    .line 271
    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_2
.end method
