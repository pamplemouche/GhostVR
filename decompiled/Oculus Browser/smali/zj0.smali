.class public final synthetic Lzj0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LEj0;


# static fields
.field public static final a:LEj0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzj0;

    invoke-direct {v0}, Lzj0;-><init>()V

    sput-object v0, Lzj0;->a:LEj0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LDj0;)V
    .locals 2

    .line 1
    check-cast p1, Lxj0;

    .line 2
    invoke-virtual {p1}, Lxj0;->b()I

    move-result v0

    .line 3
    invoke-static {v0}, Lxk0;->e(I)Lxk0;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lxk0;->a()V

    .line 5
    sget-object v1, Lxk0;->k:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p1, Lxj0;->w:Lnk0;

    return-void
.end method
