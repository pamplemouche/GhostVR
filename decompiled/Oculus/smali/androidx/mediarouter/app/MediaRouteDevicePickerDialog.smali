.class public Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "MediaRouteDevicePickerDialog.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$RecyclerAdapter;,
        Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$RouteComparator;,
        Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$RecyclerAdapter;

.field private mAttachedToWindow:Z

.field private final mCallback:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;

.field private mCloseButton:Landroid/widget/ImageButton;

.field mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field mIsSelectingDynamicRoute:Z

.field private mLastUpdateTime:J

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final mRouter:Landroidx/mediarouter/media/MediaRouter;

.field mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field private mUpdateRoutesDelayMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;-><init>(Landroid/content/Context;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogContext(Landroid/content/Context;IZ)Landroid/content/Context;

    move-result-object v0

    .line 105
    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogStyle(Landroid/content/Context;)I

    move-result v1

    .line 104
    invoke-direct {p0, v0, v1}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 80
    sget-object v0, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 88
    new-instance v0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$1;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$1;-><init>(Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mHandler:Landroid/os/Handler;

    .line 106
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v1

    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 109
    new-instance v1, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;

    invoke-direct {v1, p0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;-><init>(Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;)V

    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;

    .line 110
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mContext:Landroid/content/Context;

    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/mediarouter/R$integer;->mr_update_routes_delay_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mUpdateRoutesDelayMs:J

    .line 113
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 215
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onAttachedToWindow()V

    .line 217
    iput-boolean v3, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mAttachedToWindow:Z

    .line 218
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 219
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->refreshRoutes()V

    .line 220
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 183
    sget v0, Landroidx/mediarouter/R$layout;->mr_picker_dialog:I

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->setContentView(I)V

    .line 184
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->setDialogBackgroundColor(Landroid/content/Context;Landroid/app/Dialog;)V

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mRoutes:Ljava/util/List;

    .line 187
    sget v0, Landroidx/mediarouter/R$id;->mr_picker_close_button:I

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mCloseButton:Landroid/widget/ImageButton;

    .line 188
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v1, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$2;

    invoke-direct {v1, p0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$2;-><init>(Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    new-instance v0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$RecyclerAdapter;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$RecyclerAdapter;-><init>(Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$RecyclerAdapter;

    .line 196
    sget v0, Landroidx/mediarouter/R$id;->mr_picker_list:I

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 197
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$RecyclerAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 198
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 200
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->updateLayout()V

    .line 201
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .prologue
    .line 225
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onDetachedFromWindow()V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mAttachedToWindow:Z

    .line 228
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 229
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    return-void
.end method

.method public onFilterRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 1
    .param p1    # Landroidx/mediarouter/media/MediaRouter$RouteInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 175
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 176
    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFilterRoutes(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 158
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->onFilterRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    .line 162
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public refreshRoutes()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 236
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 238
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->onFilterRoutes(Ljava/util/List;)V

    .line 239
    sget-object v1, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$RouteComparator;->sInstance:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$RouteComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mLastUpdateTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mUpdateRoutesDelayMs:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 241
    invoke-virtual {p0, v0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->updateRoutes(Ljava/util/List;)V

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v2, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mLastUpdateTime:J

    iget-wide v4, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mUpdateRoutesDelayMs:J

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V
    .locals 3
    .param p1    # Landroidx/mediarouter/media/MediaRouteSelector;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 138
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    .line 140
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mCallback:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    .line 144
    :cond_1
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->refreshRoutes()V

    .line 146
    :cond_2
    return-void
.end method

.method updateLayout()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getDialogWidth(Landroid/content/Context;)I

    move-result v0

    .line 208
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getDialogHeight(Landroid/content/Context;)I

    move-result v1

    .line 209
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 210
    return-void
.end method

.method updateRoutes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mLastUpdateTime:J

    .line 252
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 254
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mAdapter:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$RecyclerAdapter;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$RecyclerAdapter;->setItems()V

    .line 255
    return-void
.end method
