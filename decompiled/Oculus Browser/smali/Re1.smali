.class public LRe1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKe1;


# instance fields
.field public final synthetic a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    iput-object p1, p0, LRe1;->a:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)LCe1;
    .locals 2

    .line 1
    iget-object v0, p0, LRe1;->a:Landroid/content/res/Resources;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, LQe1;->a(Landroid/content/res/Resources;III)LQe1;

    move-result-object p1

    return-object p1
.end method
