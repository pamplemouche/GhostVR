.class public final synthetic LTL0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LYL0;


# direct methods
.method public constructor <init>(LYL0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LTL0;->a:LYL0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LTL0;->a:LYL0;

    check-cast p1, Lt30;

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    .line 1
    throw p1

    .line 2
    :cond_0
    throw p1
.end method
