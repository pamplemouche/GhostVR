.class public abstract Loa0;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Map;

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Loa0;->c:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Loa0;->d:Landroid/content/Context;

    .line 4
    iput p2, p0, Loa0;->a:I

    const-string p1, ""

    .line 5
    iput-object p1, p0, Loa0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 6

    .line 1
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2
    iget-object v1, p0, Loa0;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Loa0;->c:Ljava/util/Map;

    .line 3
    iget-object v2, p0, Loa0;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v2, Lja0;->a:Lja0;

    .line 5
    iget-object v3, p0, Loa0;->d:Landroid/content/Context;

    iget v4, p0, Loa0;->a:I

    const-string v5, ""

    .line 6
    invoke-virtual {v2, v3, v4, v5}, Lja0;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 7
    :cond_0
    sget-object v2, Lja0;->a:Lja0;

    .line 8
    iget-object v3, p0, Loa0;->d:Landroid/content/Context;

    iget v4, p0, Loa0;->a:I

    iget-object v5, p0, Loa0;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v3, v4, v5}, Lja0;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    .line 10
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_1
    iget-object v1, p0, Loa0;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p1

    :goto_1
    return p1
.end method
