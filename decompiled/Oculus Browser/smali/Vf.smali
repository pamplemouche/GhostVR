.class public LVf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final e:LVf;


# instance fields
.field public final a:Z

.field public final b:LRf;

.field public final c:LLf;

.field public final d:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Landroid/support/v7/widget/GridLayout;->M:LLf;

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    invoke-static {v2, v1, v0}, Landroid/support/v7/widget/GridLayout;->a(IILLf;)LVf;

    move-result-object v0

    .line 2
    sput-object v0, LVf;->e:LVf;

    return-void
.end method

.method public constructor <init>(ZIILLf;F)V
    .locals 1

    .line 6
    new-instance v0, LRf;

    add-int/2addr p3, p2

    invoke-direct {v0, p2, p3}, LRf;-><init>(II)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, LVf;->a:Z

    .line 9
    iput-object v0, p0, LVf;->b:LRf;

    .line 10
    iput-object p4, p0, LVf;->c:LLf;

    .line 11
    iput p5, p0, LVf;->d:F

    return-void
.end method

.method public constructor <init>(ZLRf;LLf;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, LVf;->a:Z

    .line 3
    iput-object p2, p0, LVf;->b:LRf;

    .line 4
    iput-object p3, p0, LVf;->c:LLf;

    .line 5
    iput p4, p0, LVf;->d:F

    return-void
.end method


# virtual methods
.method public a(Z)LLf;
    .locals 2

    .line 1
    iget-object v0, p0, LVf;->c:LLf;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->M:LLf;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, LVf;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Landroid/support/v7/widget/GridLayout;->R:LLf;

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/support/v7/widget/GridLayout;->W:LLf;

    :goto_0
    return-object p1

    .line 4
    :cond_2
    sget-object p1, Landroid/support/v7/widget/GridLayout;->a0:LLf;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, LVf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, LVf;

    .line 3
    iget-object v2, p0, LVf;->c:LLf;

    iget-object v3, p1, LVf;->c:LLf;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, LVf;->b:LRf;

    iget-object p1, p1, LVf;->b:LRf;

    invoke-virtual {v2, p1}, LRf;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, LVf;->b:LRf;

    invoke-virtual {v0}, LRf;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, LVf;->c:LLf;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
