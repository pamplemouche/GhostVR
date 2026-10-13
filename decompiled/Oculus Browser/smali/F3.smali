.class public LF3;
.super LH3;
.source "PG"


# instance fields
.field public c:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LH3;-><init>()V

    return-void
.end method

.method public constructor <init>(LG3;)V
    .locals 1

    .line 2
    invoke-direct {p0}, LH3;-><init>()V

    .line 3
    iget-object v0, p0, LH3;->a:LG3;

    if-eq v0, p1, :cond_0

    .line 4
    iput-object p1, p0, LH3;->a:LG3;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p0}, LG3;->a(LH3;)LG3;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(LC3;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    .line 2
    check-cast p1, LI3;

    .line 3
    iget-object p1, p1, LI3;->a:Landroid/app/Notification$Builder;

    .line 4
    invoke-direct {v0, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    iget-object v1, p0, LF3;->c:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 7
    iget-boolean v1, p0, LH3;->b:Z

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_0
    return-void
.end method
