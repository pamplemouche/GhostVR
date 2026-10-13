.class public LJk0;
.super LDI0;
.source "PG"


# instance fields
.field public final synthetic w:LLk0;


# direct methods
.method public constructor <init>(LLk0;LpI0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LJk0;->w:LLk0;

    invoke-direct {p0, p2}, LDI0;-><init>(LpI0;)V

    return-void
.end method


# virtual methods
.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, LJk0;->w:LLk0;

    .line 2
    iget p2, p1, LLk0;->b:I

    const/4 v0, 0x3

    if-ge v0, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput v0, p1, LLk0;->b:I

    :goto_0
    return-void
.end method
