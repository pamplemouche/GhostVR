.class public final synthetic LuN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:LnU;


# direct methods
.method public constructor <init>(Ljava/util/List;LnU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LuN0;->a:Ljava/util/List;

    iput-object p2, p0, LuN0;->b:LnU;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, LuN0;->a:Ljava/util/List;

    iget-object v1, p0, LuN0;->b:LnU;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    invoke-virtual {v1, v2}, LnU;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1, v2}, LnU;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
