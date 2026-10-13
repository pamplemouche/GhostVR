.class public Ll90;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:LbU0;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/graphics/Bitmap;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:LfU0;

.field public n:Ljava/lang/String;

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:I

.field public t:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Ll90;->e:I

    .line 3
    iput v0, p0, Ll90;->j:I

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Ll90;->p:J

    return-void
.end method


# virtual methods
.method public a()Lm90;
    .locals 2

    .line 1
    new-instance v0, Lm90;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm90;-><init>(Ll90;Lk90;)V

    return-object v0
.end method
