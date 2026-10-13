.class public LM01;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static b:LM01;

.field public static c:LM01;

.field public static d:LM01;


# instance fields
.field public a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LM01;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lha1;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, LM01;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LN01;

    .line 2
    invoke-interface {v1, p1, p2}, LN01;->a(Lha1;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
