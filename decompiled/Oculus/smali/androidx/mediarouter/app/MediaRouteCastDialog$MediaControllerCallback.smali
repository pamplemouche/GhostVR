.class final Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;
.super Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.source "MediaRouteCastDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteCastDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteCastDialog;)V
    .locals 0

    .prologue
    .line 1353
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;-><init>()V

    .line 1354
    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    .prologue
    .line 1366
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, v1, Landroidx/mediarouter/app/MediaRouteCastDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 1367
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateArtIconIfNeeded()V

    .line 1368
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteCastDialog;->updateMetadataViews()V

    .line 1369
    return-void

    .line 1366
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    goto :goto_0
.end method

.method public onSessionDestroyed()V
    .locals 2

    .prologue
    .line 1358
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteCastDialog;->mControllerCallback:Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 1360
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteCastDialog$MediaControllerCallback;->this$0:Landroidx/mediarouter/app/MediaRouteCastDialog;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/mediarouter/app/MediaRouteCastDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 1362
    :cond_0
    return-void
.end method
