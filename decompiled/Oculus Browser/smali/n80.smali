.class public Ln80;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public A:Z

.field public B:Z

.field public C:Landroid/graphics/Bitmap;

.field public D:I

.field public E:I

.field public F:Z

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:J

.field public k:J

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:Ljava/lang/String;

.field public p:LfU0;

.field public q:J

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:J

.field public x:Z

.field public y:LbU0;

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, LfU0;->c()LfU0;

    move-result-object v0

    iput-object v0, p0, Ln80;->p:LfU0;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ln80;->r:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Ln80;->v:I

    .line 5
    iput-boolean v0, p0, Ln80;->z:Z

    return-void
.end method

.method public static a(Lorg/chromium/chrome/browser/download/DownloadInfo;)Ln80;
    .locals 3

    .line 2
    new-instance v0, Ln80;

    invoke-direct {v0}, Ln80;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->a:Ljava/lang/String;

    .line 4
    iput-object v1, v0, Ln80;->a:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->b:Ljava/lang/String;

    .line 6
    iput-object v1, v0, Ln80;->b:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    .line 8
    iput-object v1, v0, Ln80;->c:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->d:Ljava/lang/String;

    .line 10
    iput-object v1, v0, Ln80;->d:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->e:Ljava/lang/String;

    .line 12
    iput-object v1, v0, Ln80;->e:Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->f:Ljava/lang/String;

    .line 14
    iput-object v1, v0, Ln80;->f:Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->g:Ljava/lang/String;

    .line 16
    iput-object v1, v0, Ln80;->g:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->h:Ljava/lang/String;

    .line 18
    iput-object v1, v0, Ln80;->h:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->i:Ljava/lang/String;

    .line 20
    iput-object v1, v0, Ln80;->i:Ljava/lang/String;

    .line 21
    iget-wide v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->j:J

    .line 22
    iput-wide v1, v0, Ln80;->j:J

    .line 23
    iget-wide v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->k:J

    .line 24
    iput-wide v1, v0, Ln80;->k:J

    .line 25
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->l:Ljava/lang/String;

    .line 26
    iput-object v1, v0, Ln80;->m:Ljava/lang/String;

    .line 27
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->m:Z

    .line 28
    iput-boolean v1, v0, Ln80;->n:Z

    .line 29
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->n:Ljava/lang/String;

    .line 30
    iput-object v1, v0, Ln80;->o:Ljava/lang/String;

    .line 31
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->o:Z

    .line 32
    iput-boolean v1, v0, Ln80;->l:Z

    .line 33
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->p:LfU0;

    .line 34
    iput-object v1, v0, Ln80;->p:LfU0;

    .line 35
    iget-wide v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->q:J

    .line 36
    iput-wide v1, v0, Ln80;->q:J

    .line 37
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->x:Z

    .line 38
    iput-boolean v1, v0, Ln80;->x:Z

    .line 39
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->r:Z

    .line 40
    iput-boolean v1, v0, Ln80;->r:Z

    .line 41
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->s:Z

    .line 42
    iput-boolean v1, v0, Ln80;->s:Z

    .line 43
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    .line 44
    iput-boolean v1, v0, Ln80;->t:Z

    .line 45
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->u:Z

    .line 46
    iput-boolean v1, v0, Ln80;->u:Z

    .line 47
    iget v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->v:I

    .line 48
    iput v1, v0, Ln80;->v:I

    .line 49
    iget-wide v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->w:J

    .line 50
    iput-wide v1, v0, Ln80;->w:J

    .line 51
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->A:Z

    .line 52
    iput-boolean v1, v0, Ln80;->A:Z

    .line 53
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->B:Z

    .line 54
    iput-boolean v1, v0, Ln80;->B:Z

    .line 55
    iget-object v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->C:Landroid/graphics/Bitmap;

    .line 56
    iput-object v1, v0, Ln80;->C:Landroid/graphics/Bitmap;

    .line 57
    iget v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->D:I

    .line 58
    iput v1, v0, Ln80;->D:I

    .line 59
    iget v1, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->E:I

    .line 60
    iput v1, v0, Ln80;->E:I

    .line 61
    iget-boolean p0, p0, Lorg/chromium/chrome/browser/download/DownloadInfo;->F:Z

    .line 62
    iput-boolean p0, v0, Ln80;->F:Z

    return-object v0
.end method


# virtual methods
.method public a()Lorg/chromium/chrome/browser/download/DownloadInfo;
    .locals 2

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/download/DownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/chromium/chrome/browser/download/DownloadInfo;-><init>(Ln80;Lm80;)V

    return-object v0
.end method
