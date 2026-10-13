.class public final synthetic LsN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:LnU;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;LnU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LsN0;->a:Ljava/util/List;

    iput-object p2, p0, LsN0;->b:Ljava/util/List;

    iput-object p3, p0, LsN0;->c:LnU;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, LsN0;->a:Ljava/util/List;

    iget-object v1, p0, LsN0;->b:Ljava/util/List;

    iget-object v2, p0, LsN0;->c:LnU;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LkO0;

    .line 5
    iget-object v1, v1, LkO0;->b:Ljava/lang/String;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2, v3}, LnU;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {v2, v3}, LnU;->a(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
