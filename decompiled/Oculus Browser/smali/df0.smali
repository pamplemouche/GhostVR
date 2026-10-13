.class public Ldf0;
.super Landroid/text/style/ClickableSpan;
.source "PG"


# instance fields
.field public final synthetic w:Ljava/lang/String;

.field public final synthetic x:Ljava/io/File;

.field public final synthetic y:Ljava/lang/String;

.field public final synthetic z:Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldf0;->z:Lorg/chromium/chrome/browser/infobar/DuplicateDownloadInfoBar;

    iput-object p2, p0, Ldf0;->w:Ljava/lang/String;

    iput-object p3, p0, Ldf0;->x:Ljava/io/File;

    iput-object p4, p0, Ldf0;->y:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Lcf0;

    invoke-direct {p1, p0}, Lcf0;-><init>(Ldf0;)V

    sget-object v0, LkW;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 2
    invoke-virtual {p1, v0}, LkW;->executeOnExecutor(Ljava/util/concurrent/Executor;)LkW;

    return-void
.end method
