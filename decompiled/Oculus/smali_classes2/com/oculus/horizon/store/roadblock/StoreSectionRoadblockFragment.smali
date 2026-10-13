.class public Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "StoreSectionRoadblockFragment.java"


# instance fields
.field private mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mSharedPreferences:Landroid/content/SharedPreferences;
    .annotation runtime Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionSharedPrefs;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mStoreRoadblockModel:Lcom/oculus/model/StoreRoadblockModel;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)V
    .locals 1

    .prologue
    .line 43
    invoke-static {p0}, Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionModule;->$ul_$xXXandroid_content_SharedPreferences$xXXcom_oculus_horizon_store_roadblock_RoadblockedStoreSectionSharedPrefs$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$1;-><init>(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)Lcom/oculus/model/StoreRoadblockModel;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mStoreRoadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->logView(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    return-object v0
.end method

.method private logView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 200
    :try_start_0
    const-class v0, Lcom/oculus/horizon/logging/TrackingViews$View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ROADBLOCK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 201
    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportView(Lcom/oculus/horizon/logging/TrackingViews$View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static newInstance(Landroid/os/Bundle;)Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;-><init>()V

    .line 77
    invoke-virtual {v0, p0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    return-object v0
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Lcom/oculus/model/StoreRoadblockModel;Lcom/oculus/horizon/store/StoreItemModel;Ljava/lang/String;Lcom/oculus/horizon/logging/TrackingViews$View;)V
    .locals 4

    .prologue
    .line 231
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 232
    const-string v1, "extra_store_roadblock"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 233
    const-string v1, "extra_store_item_continue"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 234
    invoke-static {v0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->newInstance(Landroid/os/Bundle;)Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    move-result-object v1

    .line 235
    if-eqz p4, :cond_0

    .line 236
    const-string v2, "extra_referral_view"

    invoke-virtual {p4}, Lcom/oculus/horizon/logging/TrackingViews$View;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    invoke-virtual {v1, p0, p3}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Lcom/oculus/model/StoreRoadblockModel;Ljava/lang/String;Lcom/oculus/horizon/logging/TrackingViews$View;)V
    .locals 4

    .prologue
    .line 246
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    invoke-static {v0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->newInstance(Landroid/os/Bundle;)Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    move-result-object v1

    .line 248
    const-string v2, "extra_store_roadblock"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 249
    if-eqz p3, :cond_0

    .line 250
    const-string v2, "extra_referral_view"

    invoke-virtual {p3}, Lcom/oculus/horizon/logging/TrackingViews$View;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    invoke-virtual {v1, p0, p2}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Lcom/oculus/model/StoreRoadblockModel;Ljava/util/ArrayList;Lcom/oculus/horizon/store/StoreSection;Ljava/lang/String;Lcom/oculus/horizon/logging/TrackingViews$View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcom/oculus/model/StoreRoadblockModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/store/StoreItemModel;",
            ">;",
            "Lcom/oculus/horizon/store/StoreSection;",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/logging/TrackingViews$View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    const-string v1, "extra_store_roadblock"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 216
    const-string v1, "extra_store_items_list_continue"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 217
    const-string v1, "extra_store_section_continue"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 218
    if-eqz p5, :cond_0

    .line 219
    const-string v1, "extra_referral_view"

    invoke-virtual {p5}, Lcom/oculus/horizon/logging/TrackingViews$View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    invoke-static {v0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->newInstance(Landroid/os/Bundle;)Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p0, p4}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 223
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)V

    .line 85
    const/4 v0, 0x2

    sget v1, Lcom/oculus/horizon/R$style;->Theme_OculusDialog_FullScreen:I

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->setStyle(II)V

    .line 86
    invoke-virtual {p0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_store_roadblock"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/model/StoreRoadblockModel;

    iput-object v0, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mStoreRoadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    .line 87
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 91
    sget v0, Lcom/oculus/horizon/R$layout;->special_store_section_landing_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 194
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mStoreRoadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    iget-object v0, v0, Lcom/oculus/model/StoreRoadblockModel;->category:Ljava/lang/String;

    const-string v1, "_VIEW"

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->logView(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 96
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    sget v0, Lcom/oculus/horizon/R$id;->close_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    new-instance v1, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$2;-><init>(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    sget v0, Lcom/oculus/horizon/R$id;->continue_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mStoreRoadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    invoke-virtual {p0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/model/StoreRoadblockModel;->getButtonText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    new-instance v1, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment$3;-><init>(Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    sget v0, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 141
    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mStoreRoadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    invoke-virtual {p0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/model/StoreRoadblockModel;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    sget v0, Lcom/oculus/horizon/R$id;->description_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 144
    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mStoreRoadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    invoke-virtual {p0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/model/StoreRoadblockModel;->getDescriptionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mStoreRoadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    invoke-virtual {v2}, Lcom/oculus/model/StoreRoadblockModel;->getDescriptionUri()Landroid/net/Uri;

    move-result-object v2

    .line 146
    if-nez v2, :cond_3

    .line 150
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 153
    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mStoreRoadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    invoke-virtual {p0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/model/StoreRoadblockModel;->getSecondDescriptionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_1

    .line 155
    iget-object v2, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mStoreRoadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    invoke-virtual {v2}, Lcom/oculus/model/StoreRoadblockModel;->getSecondDescriptionUri()Landroid/net/Uri;

    move-result-object v2

    .line 156
    if-nez v2, :cond_4

    move-object v2, v1

    .line 161
    :goto_1
    sget v1, Lcom/oculus/horizon/R$id;->second_description_text:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 162
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 164
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mStoreRoadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    invoke-virtual {v1}, Lcom/oculus/model/StoreRoadblockModel;->isMalibuCategory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 168
    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 169
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 171
    invoke-virtual {p0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$dimen;->common_vertical_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mStoreRoadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    invoke-virtual {v0}, Lcom/oculus/model/StoreRoadblockModel;->getImageUri()Ljava/lang/String;

    move-result-object v2

    .line 177
    iget-object v0, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mStoreRoadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    invoke-virtual {p0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/model/StoreRoadblockModel;->getImageAspectRatio(Landroid/content/Context;)F

    move-result v3

    .line 178
    if-eqz v2, :cond_2

    cmpl-float v0, v3, v4

    if-lez v0, :cond_2

    .line 179
    sget v0, Lcom/oculus/horizon/R$id;->banner_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 181
    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/percentlayout/widget/PercentFrameLayout$LayoutParams;

    .line 182
    invoke-virtual {v1}, Landroidx/percentlayout/widget/PercentFrameLayout$LayoutParams;->getPercentLayoutInfo()Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v4

    iput v3, v4, Landroidx/percentlayout/widget/PercentLayoutHelper$PercentLayoutInfo;->aspectRatio:F

    .line 183
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, v5}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 188
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 189
    return-void

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/oculus/horizon/util/TextSpanUtils;->makeLinkWithURLSpan(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/text/SpannableString;

    move-result-object v1

    goto/16 :goto_0

    .line 160
    :cond_4
    invoke-virtual {p0}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 159
    invoke-static {v3, v1, v2}, Lcom/oculus/horizon/util/TextSpanUtils;->makeLinkWithURLSpan(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/text/SpannableString;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_1
.end method
