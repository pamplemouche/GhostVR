.class public LKC0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:LJC0;

.field public final synthetic b:LLC0;


# direct methods
.method public constructor <init>(LLC0;LJC0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LKC0;->b:LLC0;

    iput-object p2, p0, LKC0;->a:LJC0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LvC0;

    .line 3
    iget-object v1, v0, LvC0;->w:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, LKC0;->b:LLC0;

    iget-object v2, v2, LLC0;->a:LNC0;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2, v1, v3}, LNC0;->a(Ljava/lang/String;Ljava/lang/String;)LyC0;

    move-result-object v1

    .line 6
    iget-object v1, v1, LyC0;->B:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, LKC0;->a:LJC0;

    invoke-virtual {p1}, LJC0;->a()V

    return-void
.end method
