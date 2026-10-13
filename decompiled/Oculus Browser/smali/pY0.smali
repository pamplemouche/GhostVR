.class public LpY0;
.super LsY0;
.source "PG"


# instance fields
.field public N:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/input/TextSuggestionHost;Lorg/chromium/ui/base/WindowAndroid;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, LsY0;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/input/TextSuggestionHost;Lorg/chromium/ui/base/WindowAndroid;Landroid/view/View;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 2
    iput-object p1, p0, LpY0;->N:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 4
    iget-object v0, p0, LpY0;->N:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public a(DDLjava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p6}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, [Ljava/lang/String;

    iput-object p6, p0, LpY0;->N:[Ljava/lang/String;

    .line 2
    iget-object p6, p0, LsY0;->G:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    invoke-super/range {p0 .. p5}, LsY0;->a(DDLjava/lang/String;)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 5
    iget-object v0, p0, LsY0;->x:Lorg/chromium/content/browser/input/TextSuggestionHost;

    iget-object v1, p0, LpY0;->N:[Ljava/lang/String;

    aget-object p1, v1, p1

    .line 6
    iget-wide v1, v0, Lorg/chromium/content/browser/input/TextSuggestionHost;->w:J

    .line 7
    invoke-static {v1, v2, v0, p1}, LJ/N;->M7RnYR2r(JLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, LpY0;->N:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public c(I)Landroid/text/SpannableString;
    .locals 2

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, LpY0;->N:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method
