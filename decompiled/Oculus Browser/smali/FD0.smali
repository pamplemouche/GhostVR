.class public LFD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic w:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, LFD0;->w:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "GCM.DataMessageReceivedHasRegisteredApp"

    .line 1
    invoke-static {v1, v0}, LfV;->a(Ljava/lang/String;Z)V

    const-string v1, "GCM.DataMessageReceived"

    .line 2
    invoke-static {v1, v0}, LfV;->c(Ljava/lang/String;I)V

    .line 3
    iget-boolean v0, p0, LFD0;->w:Z

    const-string v1, "GCM.DataMessageReceivedHasCollapseKey"

    invoke-static {v1, v0}, LfV;->a(Ljava/lang/String;Z)V

    return-void
.end method
