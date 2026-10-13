.class public abstract Landroidx/transition/Visibility;
.super Landroidx/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/Visibility$DisappearListener;,
        Landroidx/transition/Visibility$VisibilityInfo;,
        Landroidx/transition/Visibility$Mode;
    }
.end annotation


# static fields
.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:visibility:visibility"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:visibility:parent"

    aput-object v2, v0, v1

    sput-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    .line 98
    const/4 v0, 0x3

    iput v0, p0, Landroidx/transition/Visibility;->mMode:I

    .line 101
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 149
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:visibility:parent"

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 152
    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 153
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:screenLocation"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method private getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 193
    new-instance v1, Landroidx/transition/Visibility$VisibilityInfo;

    invoke-direct {v1}, Landroidx/transition/Visibility$VisibilityInfo;-><init>()V

    .line 194
    iput-boolean v4, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 195
    iput-boolean v4, v1, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 196
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 198
    iget-object v0, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 203
    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 205
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:parent"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 210
    :goto_1
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 211
    iget v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v2, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-ne v0, v2, :cond_2

    iget-object v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    iget-object v2, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-ne v0, v2, :cond_2

    move-object v0, v1

    .line 241
    :goto_2
    return-object v0

    .line 200
    :cond_0
    iput v5, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 201
    iput-object v6, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    goto :goto_0

    .line 207
    :cond_1
    iput v5, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 208
    iput-object v6, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    goto :goto_1

    .line 215
    :cond_2
    iget v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v2, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-eq v0, v2, :cond_5

    .line 216
    iget v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v0, :cond_4

    .line 217
    iput-boolean v4, v1, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 218
    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    :cond_3
    :goto_3
    move-object v0, v1

    .line 241
    goto :goto_2

    .line 219
    :cond_4
    iget v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v0, :cond_3

    .line 220
    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 221
    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_3

    .line 225
    :cond_5
    iget-object v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 226
    iput-boolean v4, v1, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 227
    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_3

    .line 228
    :cond_6
    iget-object v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    .line 229
    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 230
    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_3

    .line 234
    :cond_7
    if-nez p1, :cond_8

    iget v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v0, :cond_8

    .line 235
    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 236
    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_3

    .line 237
    :cond_8
    if-nez p2, :cond_3

    iget v0, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v0, :cond_3

    .line 238
    iput-boolean v4, v1, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 239
    iput-boolean v3, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_3
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 163
    invoke-direct {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 164
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 158
    invoke-direct {p0, p1}, Landroidx/transition/Visibility;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 159
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/transition/TransitionValues;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 248
    invoke-direct {p0, p2, p3}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 249
    iget-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 251
    :cond_0
    iget-boolean v1, v0, Landroidx/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    if-eqz v1, :cond_1

    .line 252
    iget v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v5, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 255
    :cond_1
    iget v3, v0, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v5, v0, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 144
    sget-object v0, Landroidx/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 509
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 520
    :cond_0
    :goto_0
    return v0

    .line 512
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v1, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    .line 513
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:visibility"

    .line 514
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 519
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v1

    .line 520
    iget-boolean v2, v1, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v2, :cond_0

    iget v2, v1, Landroidx/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-eqz v2, :cond_3

    iget v1, v1, Landroidx/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 281
    iget v0, p0, Landroidx/transition/Visibility;->mMode:I

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move-object v0, v1

    .line 295
    :goto_0
    return-object v0

    .line 284
    :cond_1
    if-nez p2, :cond_2

    .line 285
    iget-object v0, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 286
    invoke-virtual {p0, v0, v3}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v2

    .line 288
    invoke-virtual {p0, v0, v3}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v0

    .line 290
    invoke-direct {p0, v2, v0}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 291
    iget-boolean v0, v0, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 292
    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p2, p4}, Landroidx/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;ILandroidx/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 338
    iget v0, p0, Landroidx/transition/Visibility;->mMode:I

    and-int/lit8 v0, v0, 0x2

    if-eq v0, v9, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-object v2

    .line 342
    :cond_1
    if-eqz p2, :cond_0

    .line 347
    iget-object v6, p2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 348
    if-eqz p4, :cond_4

    iget-object v0, p4, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    move-object v1, v0

    .line 353
    :goto_1
    sget v0, Landroidx/transition/R$id;->save_overlay_view:I

    invoke-virtual {v6, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 354
    if-eqz v0, :cond_5

    move v1, v3

    move-object v5, v0

    move-object v0, v2

    .line 417
    :goto_2
    if-eqz v5, :cond_e

    .line 420
    if-nez v1, :cond_2

    .line 421
    invoke-static {p1}, Landroidx/transition/ViewGroupUtils;->getOverlay(Landroid/view/ViewGroup;)Landroidx/transition/ViewGroupOverlayImpl;

    move-result-object v2

    .line 422
    iget-object v0, p2, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v7, "android:visibility:screenLocation"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 423
    aget v7, v0, v4

    .line 424
    aget v0, v0, v3

    .line 425
    new-array v8, v9, [I

    .line 426
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 427
    aget v4, v8, v4

    sub-int v4, v7, v4

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int/2addr v4, v7

    invoke-virtual {v5, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 428
    aget v3, v8, v3

    sub-int/2addr v0, v3

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v5, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 429
    invoke-interface {v2, v5}, Landroidx/transition/ViewGroupOverlayImpl;->add(Landroid/view/View;)V

    .line 433
    :cond_2
    invoke-virtual {p0, p1, v5, p2, p4}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    .line 434
    if-nez v1, :cond_3

    .line 435
    if-nez v0, :cond_d

    .line 436
    invoke-interface {v2, v5}, Landroidx/transition/ViewGroupOverlayImpl;->remove(Landroid/view/View;)V

    :cond_3
    :goto_3
    move-object v2, v0

    .line 465
    goto :goto_0

    :cond_4
    move-object v1, v2

    .line 348
    goto :goto_1

    .line 363
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_8

    .line 364
    :cond_6
    if-eqz v1, :cond_7

    move v0, v4

    move-object v5, v1

    move-object v1, v2

    .line 384
    :goto_4
    if-eqz v0, :cond_10

    .line 388
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_b

    move-object v0, v1

    move-object v5, v6

    move v1, v4

    .line 390
    goto :goto_2

    :cond_7
    move v0, v3

    move-object v1, v2

    move-object v5, v2

    .line 368
    goto :goto_4

    .line 372
    :cond_8
    const/4 v0, 0x4

    if-ne p5, v0, :cond_9

    move v0, v4

    move-object v5, v2

    .line 373
    goto :goto_4

    .line 376
    :cond_9
    if-ne v6, v1, :cond_a

    move v0, v4

    move-object v5, v2

    .line 377
    goto :goto_4

    :cond_a
    move v0, v3

    move-object v1, v2

    move-object v5, v2

    .line 379
    goto :goto_4

    .line 391
    :cond_b
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_10

    .line 392
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 393
    invoke-virtual {p0, v0, v3}, Landroidx/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v7

    .line 394
    invoke-virtual {p0, v0, v3}, Landroidx/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v8

    .line 397
    invoke-direct {p0, v7, v8}, Landroidx/transition/Visibility;->getVisibilityChangeInfo(Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroidx/transition/Visibility$VisibilityInfo;

    move-result-object v7

    .line 398
    iget-boolean v7, v7, Landroidx/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-nez v7, :cond_c

    .line 399
    invoke-static {p1, v6, v0}, Landroidx/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    move-object v0, v1

    move v1, v4

    goto/16 :goto_2

    .line 402
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    .line 403
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, -0x1

    if-eq v7, v0, :cond_10

    .line 404
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroidx/transition/Visibility;->mCanRemoveViews:Z

    if-eqz v0, :cond_10

    move-object v0, v1

    move-object v5, v6

    move v1, v4

    .line 408
    goto/16 :goto_2

    .line 438
    :cond_d
    sget v1, Landroidx/transition/R$id;->save_overlay_view:I

    invoke-virtual {v6, v1, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 440
    new-instance v1, Landroidx/transition/Visibility$1;

    invoke-direct {v1, p0, v2, v5, v6}, Landroidx/transition/Visibility$1;-><init>(Landroidx/transition/Visibility;Landroidx/transition/ViewGroupOverlayImpl;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroidx/transition/Visibility;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    goto :goto_3

    .line 468
    :cond_e
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 470
    invoke-static {v0, v4}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 471
    invoke-virtual {p0, p1, v0, p2, p4}, Landroidx/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v2

    .line 472
    if-eqz v2, :cond_f

    .line 473
    new-instance v1, Landroidx/transition/Visibility$DisappearListener;

    invoke-direct {v1, v0, p5, v3}, Landroidx/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    .line 475
    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 476
    invoke-static {v2, v1}, Landroidx/transition/AnimatorUtils;->addPauseListener(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    .line 477
    invoke-virtual {p0, v1}, Landroidx/transition/Visibility;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    goto/16 :goto_0

    .line 479
    :cond_f
    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    goto/16 :goto_0

    :cond_10
    move-object v0, v1

    move v1, v4

    goto/16 :goto_2
.end method

.method public setMode(I)V
    .locals 2

    .prologue
    .line 124
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iput p1, p0, Landroidx/transition/Visibility;->mMode:I

    .line 128
    return-void
.end method
