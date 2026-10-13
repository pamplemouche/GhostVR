.class Lcom/oculus/horizon/hsw/HSWVideoFragment$4;
.super Ljava/lang/Object;
.source "HSWVideoFragment.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/hsw/HSWVideoFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/hsw/HSWVideoFragment;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/oculus/horizon/hsw/HSWVideoFragment$4;->this$0:Lcom/oculus/horizon/hsw/HSWVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 160
    return-void
.end method
