.class final Lcom/facebook/stetho/inspector/protocol/module/CSS$PeerManagerListener;
.super Lcom/facebook/stetho/inspector/helper/PeersRegisteredListener;
.source "CSS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/stetho/inspector/protocol/module/CSS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PeerManagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/stetho/inspector/protocol/module/CSS;


# direct methods
.method private constructor <init>(Lcom/facebook/stetho/inspector/protocol/module/CSS;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/facebook/stetho/inspector/protocol/module/CSS$PeerManagerListener;->this$0:Lcom/facebook/stetho/inspector/protocol/module/CSS;

    invoke-direct {p0}, Lcom/facebook/stetho/inspector/helper/PeersRegisteredListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/stetho/inspector/protocol/module/CSS;Lcom/facebook/stetho/inspector/protocol/module/CSS$1;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/facebook/stetho/inspector/protocol/module/CSS$PeerManagerListener;-><init>(Lcom/facebook/stetho/inspector/protocol/module/CSS;)V

    return-void
.end method
