.class public LHD0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "GCM.DeletedMessagesReceived"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, LfV;->a(Ljava/lang/String;I)V

    return-void
.end method
