.class public Lqv0;
.super LTH0;
.source "PG"


# instance fields
.field public final synthetic a:Lyv0;


# direct methods
.method public constructor <init>(Lyv0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqv0;->a:Lyv0;

    invoke-direct {p0}, LTH0;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;II)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lqv0;->a:Lyv0;

    .line 3
    iget-object p1, p1, Lyv0;->K:LHu0;

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, LHu0;->a(I)V

    .line 5
    iget-object p1, p0, Lqv0;->a:Lyv0;

    const/4 p2, 0x1

    const-string p3, "Tab switch dismissed Payment Request UI."

    .line 6
    invoke-virtual {p1, p3, p2}, Lyv0;->a(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
