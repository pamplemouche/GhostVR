.class public LUF0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LXF0;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Object;

.field public f:I

.field public g:I

.field public h:Z

.field public i:I

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LUF0;->h:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, LUF0;->l:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, LUF0;->m:I

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;LXF0;II)LUF0;
    .locals 1

    .line 1
    new-instance v0, LUF0;

    invoke-direct {v0}, LUF0;-><init>()V

    .line 2
    iput-object p0, v0, LUF0;->b:Ljava/lang/CharSequence;

    .line 3
    iput-object p1, v0, LUF0;->a:LXF0;

    .line 4
    iput p2, v0, LUF0;->k:I

    .line 5
    iput p3, v0, LUF0;->l:I

    const/4 p0, 0x2

    if-ne p2, p0, :cond_0

    .line 6
    sget-object p0, LzT;->a:Landroid/content/Context;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f130443

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, LUF0;->d:Ljava/lang/String;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 8
    iget v0, p0, LUF0;->k:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 2

    .line 1
    iget v0, p0, LUF0;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
