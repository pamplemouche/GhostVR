.class public abstract Lcom/oculus/horizon/store/StoreItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StoreItemViewHolder.java"

# interfaces
.implements Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field protected final mActivity:Landroidx/fragment/app/FragmentActivity;

.field protected final mColorScheme:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

.field private mCountDownTimerClockTextView:Landroid/widget/TextView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCountdownTimerGradient:Landroid/graphics/drawable/Drawable;

.field private mDefaultTakeoverGradient:Landroid/graphics/drawable/Drawable;

.field private mGradient:Landroid/widget/ImageView;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private final mPressedMaskColor:I

.field protected final mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

.field protected mResources:Landroid/content/res/Resources;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field protected final mSearchText:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected mSectionRoadblockModel:Lcom/oculus/model/StoreRoadblockModel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final mShouldUseSquareImage:Z

.field protected final mType:I


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/store/StoreItemViewHolder;)V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/store/StoreItemViewHolder;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/store/StoreItemViewHolder;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/store/StoreItemViewHolder;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/store/StoreItemViewHolder;)V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreItemViewHolder;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_content_res_Resources$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreItemViewHolder;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;ILandroid/view/View;ZLcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreItemViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/store/StoreItemViewHolder;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/store/StoreItemViewHolder;)V

    .line 73
    iput p2, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mType:I

    .line 74
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mActivity:Landroidx/fragment/app/FragmentActivity;

    .line 75
    iput-boolean p4, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mShouldUseSquareImage:Z

    .line 76
    iput-object p5, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mColorScheme:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/oculus/horizon/R$color;->oculus_black_10_alpha_15:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mPressedMaskColor:I

    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/oculus/horizon/R$drawable;->takeover_meta_gradient:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mDefaultTakeoverGradient:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/oculus/horizon/R$drawable;->countdown_timer_gradient:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mCountdownTimerGradient:Landroid/graphics/drawable/Drawable;

    .line 80
    iput-object p6, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 81
    iput-object p7, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mSearchText:Ljava/lang/String;

    .line 83
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreItemViewHolder;->initViews()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oculus/horizon/store/StoreItemViewHolder;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mPressedMaskColor:I

    return v0
.end method


# virtual methods
.method public attachStoreCountdownTimer(Lcom/oculus/horizon/store/StoreCountdownTimer;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->countdown_timer_clock:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->gradient:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mGradient:Landroid/widget/ImageView;

    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreItemViewHolder;->destroyStoreCountdownTimer()V

    .line 129
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/store/StoreCountdownTimer;->setListener(Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;)V

    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreCountdownTimer;->refresh()Z

    move-result v0

    .line 132
    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mGradient:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mGradient:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mCountdownTimerGradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mGradient:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mGradient:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mDefaultTakeoverGradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public abstract bindModel(Lcom/oculus/horizon/store/StoreItemModel;Ljava/lang/String;)V
.end method

.method public destroyStoreCountdownTimer()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreCountdownTimer;->destroy()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    .line 151
    :cond_0
    return-void
.end method

.method protected disableOnTouchListener()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public hideIfViewExists(I)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_0
    return-void
.end method

.method public abstract initViews()V
.end method

.method protected loadImageView(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 207
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget v1, Lcom/oculus/horizon/R$drawable;->store_item_placeholder:I

    invoke-static {v1}, Lcom/facebook/common/util/UriUtil;->getUriForResourceId(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onCountdownFinish()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mGradient:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mGradient:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mDefaultTakeoverGradient:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    :cond_0
    return-void
.end method

.method public onCountdownTick(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 274
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/oculus/horizon/R$string;->store_sale_ends_in_formatter_message:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 276
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    :cond_0
    return-void
.end method

.method protected setOnClickListener(Lcom/oculus/horizon/store/StoreItemModel;)V
    .locals 7

    .prologue
    .line 219
    sget v0, Lcom/oculus/horizon/logging/LoggingModule$UL_id;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 1
    invoke-static {v0, v1}, Lcom/facebook/inject/FbInjector;->localInstance(ILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/horizon/logging/OculusLogger;

    .line 220
    sget v0, Lcom/oculus/horizon/HorizonModule$UL_id;->$ul_$xXXcom_oculus_horizon_store_roadblock_RoadblockedStoreSectionHelper$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 1
    invoke-static {v0, v1}, Lcom/facebook/inject/FbInjector;->localInstance(ILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;

    .line 221
    sget v0, Lcom/oculus/horizon/main/MainModule$UL_id;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 1
    invoke-static {v0, v1}, Lcom/facebook/inject/FbInjector;->localInstance(ILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    .line 222
    iget-object v6, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/oculus/horizon/store/StoreItemViewHolder$1;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/store/StoreItemViewHolder$1;-><init>(Lcom/oculus/horizon/store/StoreItemViewHolder;Lcom/oculus/horizon/logging/OculusLogger;Lcom/oculus/horizon/store/StoreItemModel;Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    return-void
.end method

.method protected setOnTouchListener()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/store/StoreItemViewHolder$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/store/StoreItemViewHolder$2;-><init>(Lcom/oculus/horizon/store/StoreItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 270
    return-void
.end method

.method protected setPriceTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8

    .prologue
    const/16 v7, 0x21

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 169
    if-nez p4, :cond_1

    .line 170
    if-nez p2, :cond_0

    .line 171
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mColorScheme:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    iget v2, v2, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->notPurchasedColorResId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    :goto_1
    if-eqz p4, :cond_3

    if-eqz p5, :cond_3

    .line 201
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mColorScheme:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    iget v2, v2, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->checkmarkResId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 203
    :goto_2
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 204
    return-void

    .line 173
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/oculus/horizon/R$string;->store_strikethrough_format:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v6

    const/4 v5, 0x1

    aput-object p3, v4, v5

    .line 175
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 177
    new-instance v2, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v2}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 180
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 177
    invoke-virtual {v0, v2, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 182
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mColorScheme:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    iget v4, v4, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->strikethroughColorResId:I

    .line 183
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 185
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 182
    invoke-virtual {v0, v2, v6, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 187
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 190
    :cond_1
    if-eqz p5, :cond_2

    .line 191
    sget v0, Lcom/oculus/horizon/R$string;->common_installed:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mColorScheme:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    iget v2, v2, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->purchasedColorResId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 194
    :cond_2
    sget v0, Lcom/oculus/horizon/R$string;->store_purchased:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 195
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mColorScheme:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    iget v2, v2, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->purchasedColorResId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public setSectionRoadblockModel(Lcom/oculus/model/StoreRoadblockModel;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreItemViewHolder;->mSectionRoadblockModel:Lcom/oculus/model/StoreRoadblockModel;

    .line 118
    return-void
.end method
