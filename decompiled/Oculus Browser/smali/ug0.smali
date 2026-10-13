.class public Lug0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lxg0;


# direct methods
.method public constructor <init>(Lxg0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lug0;->a:Lxg0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lug0;->a:Lxg0;

    new-instance v1, Lwg0;

    invoke-direct {v1, v0, p1}, Lwg0;-><init>(Lxg0;Ljava/lang/String;)V

    .line 3
    iput-object v1, v0, Lxg0;->d:Lwg0;

    .line 4
    sget-object p1, LFW;->m:LFW;

    iget-object v0, p0, Lug0;->a:Lxg0;

    .line 5
    iget-object v0, v0, Lxg0;->d:Lwg0;

    const-wide/16 v1, 0x0

    .line 6
    invoke-static {p1, v0, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    return-void
.end method
