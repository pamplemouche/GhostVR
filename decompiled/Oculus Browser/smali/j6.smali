.class public final Lj6;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Li6;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Li6;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj6;->a:Landroid/content/Context;

    iput-object p2, p0, Lj6;->b:Li6;

    iput p3, p0, Lj6;->c:I

    iput-object p4, p0, Lj6;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lj6;->a:Landroid/content/Context;

    iget-object v1, p0, Lj6;->b:Li6;

    iget v2, p0, Lj6;->c:I

    invoke-static {v0, v1, v2}, Lq6;->a(Landroid/content/Context;Li6;I)Lp6;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lp6;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 3
    sget-object v2, Lq6;->a:LR6;

    iget-object v3, p0, Lj6;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, LR6;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
