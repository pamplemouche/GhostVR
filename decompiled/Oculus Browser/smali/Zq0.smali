.class public LZq0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LAc1;


# instance fields
.field public a:Ljava/util/List;

.field public b:Lvr0;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:LQd1;

.field public final synthetic e:Lar0;


# direct methods
.method public constructor <init>(Lar0;Landroid/content/Context;LQd1;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZq0;->e:Lar0;

    iput-object p2, p0, LZq0;->c:Landroid/content/Context;

    iput-object p3, p0, LZq0;->d:LQd1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LZq0;->a:Ljava/util/List;

    return-void
.end method
