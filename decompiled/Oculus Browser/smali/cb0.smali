.class public final synthetic Lcb0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:LJx;


# direct methods
.method public constructor <init>(LJx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcb0;->a:LJx;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcb0;->a:LJx;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lxw;->b:Lxw;

    goto :goto_0

    :cond_0
    sget-object p1, Lxw;->c:Lxw;

    .line 2
    :goto_0
    invoke-interface {v0, p1}, LJx;->a(Ljava/lang/Object;)V

    return-void
.end method
