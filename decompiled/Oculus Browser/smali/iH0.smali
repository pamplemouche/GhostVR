.class public LiH0;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:LjH0;


# direct methods
.method public constructor <init>(LjH0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LiH0;->w:LjH0;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, LiH0;->w:LjH0;

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p1, LjH0;->b:Z

    return-void
.end method
