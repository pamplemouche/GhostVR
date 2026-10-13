.class public Lqa0;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:Lwa0;


# direct methods
.method public constructor <init>(Lwa0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqa0;->w:Lwa0;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroyed(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lqa0;->w:Lwa0;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lwa0;->mIsTabDestroyed:Z

    return-void
.end method
