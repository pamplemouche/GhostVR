.class public Lorg/chromium/content_public/browser/NavigationHandle;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:Z

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(JLjava/lang/String;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lorg/chromium/content_public/browser/NavigationHandle;->d:Ljava/lang/String;

    .line 3
    iput-boolean p4, p0, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    .line 4
    iput-boolean p5, p0, Lorg/chromium/content_public/browser/NavigationHandle;->b:Z

    return-void
.end method

.method private didRedirect(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/content_public/browser/NavigationHandle;->d:Ljava/lang/String;

    return-void
.end method

.method private release()V
    .locals 0

    return-void
.end method


# virtual methods
.method public didFinish(Ljava/lang/String;ZZZZZIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/chromium/content_public/browser/NavigationHandle;->d:Ljava/lang/String;

    .line 2
    iput-boolean p2, p0, Lorg/chromium/content_public/browser/NavigationHandle;->f:Z

    .line 3
    iput-boolean p3, p0, Lorg/chromium/content_public/browser/NavigationHandle;->e:Z

    .line 4
    iput-boolean p4, p0, Lorg/chromium/content_public/browser/NavigationHandle;->g:Z

    const/4 p1, -0x1

    if-ne p7, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/chromium/content_public/browser/NavigationHandle;->c:Ljava/lang/Integer;

    .line 6
    iput p8, p0, Lorg/chromium/content_public/browser/NavigationHandle;->h:I

    .line 7
    iput p9, p0, Lorg/chromium/content_public/browser/NavigationHandle;->i:I

    return-void
.end method
