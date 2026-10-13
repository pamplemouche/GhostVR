.class public final synthetic LUL0;
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

    iput-object p1, p0, LUL0;->a:LYL0;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LUL0;->a:LYL0;

    check-cast p1, Lw30;

    .line 1
    iget-object p1, v0, LYL0;->D:Lv30;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, LWL0;

    invoke-direct {p1, v0}, LWL0;-><init>(LYL0;)V

    iput-object p1, v0, LYL0;->D:Lv30;

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
