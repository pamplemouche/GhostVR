.class public LKb0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LFb0;


# instance fields
.field public final a:I

.field public final synthetic b:LLb0;


# direct methods
.method public constructor <init>(LLb0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, LKb0;->b:LLb0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, LKb0;->a:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->b()V

    .line 2
    iget v0, p0, LKb0;->a:I

    invoke-static {v0}, LLb0;->a(I)Ljava/lang/String;

    .line 3
    invoke-static {p1}, LLb0;->b(I)Ljava/lang/String;

    .line 4
    iget-object v0, p0, LKb0;->b:LLb0;

    .line 5
    iget-object v0, v0, LLb0;->a:Ljava/util/Map;

    .line 6
    iget v1, p0, LKb0;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p0, LKb0;->b:LLb0;

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p1, LLb0;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, LKb0;->b:LLb0;

    .line 10
    iget-object p1, p1, LLb0;->c:LHb0;

    if-nez p1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    sget-object p1, LZ01;->a:LFW;

    new-instance v0, LJb0;

    invoke-direct {v0, p0}, LJb0;-><init>(LKb0;)V

    const-wide/16 v1, 0x0

    .line 12
    invoke-static {p1, v0, v1, v2}, Lorg/chromium/base/task/PostTask;->a(LFW;Ljava/lang/Runnable;J)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 13
    throw p1
.end method
