.class Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment$3;
.super Ljava/lang/Object;
.source "LocalMediaPreviewFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment$3;->this$0:Lcom/oculus/horizon/libraryui/localmedia/LocalMediaPreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 138
    return-void
.end method
