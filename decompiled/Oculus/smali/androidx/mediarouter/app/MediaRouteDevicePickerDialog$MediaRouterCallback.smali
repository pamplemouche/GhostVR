.class final Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "MediaRouteDevicePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    .line 259
    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;

    iget-boolean v0, v0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mIsSelectingDynamicRoute:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 266
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mIsSelectingDynamicRoute:Z

    .line 267
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->dismiss()V

    .line 271
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->refreshRoutes()V

    goto :goto_0
.end method

.method public onRouteChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->refreshRoutes()V

    .line 281
    return-void
.end method

.method public onRouteRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->refreshRoutes()V

    .line 276
    return-void
.end method

.method public onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;

    iget-boolean v0, v0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->mIsSelectingDynamicRoute:Z

    if-eqz v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteDevicePickerDialog;->dismiss()V

    goto :goto_0
.end method
