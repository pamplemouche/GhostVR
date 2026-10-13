.class public Lorg/chromium/content_public/browser/LoadUrlParams;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Lh11;

.field public f:Ljava/util/Map;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:Lorg/chromium/content_public/common/ResourceRequestBody;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Z

.field public o:J

.field public p:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->d:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->c:I

    .line 5
    iput p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->h:I

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->i:Lorg/chromium/content_public/common/ResourceRequestBody;

    .line 7
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->j:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->k:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lorg/chromium/content_public/browser/LoadUrlParams;->l:Ljava/lang/String;

    return-void
.end method
