.class public final synthetic LtN0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/util/List;

.field public final d:LnU;


# direct methods
.method public constructor <init>(JJLjava/util/List;LnU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LtN0;->a:J

    iput-wide p3, p0, LtN0;->b:J

    iput-object p5, p0, LtN0;->c:Ljava/util/List;

    iput-object p6, p0, LtN0;->d:LnU;

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 7

    iget-wide v0, p0, LtN0;->a:J

    iget-wide v2, p0, LtN0;->b:J

    iget-object v4, p0, LtN0;->c:Ljava/util/List;

    iget-object v5, p0, LtN0;->d:LnU;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {v0, v1, v4}, LBN0;->a(JLjava/util/List;)I

    move-result p1

    invoke-static {v2, v3, v4}, LBN0;->a(JLjava/util/List;)I

    move-result v0

    invoke-interface {v4, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {v5, v6}, LnU;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v5, v6}, LnU;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
