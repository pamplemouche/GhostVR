.class public Ljs0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lwr0;


# static fields
.field public static final L:LaV;

.field public static final M:LUU;

.field public static final N:LUU;

.field public static final O:LUU;

.field public static final P:LUU;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:J

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public final H:I

.field public I:Lorg/chromium/chrome/browser/profiles/Profile;

.field public J:LIa0;

.field public final K:LTr0;

.field public final w:Lhs0;

.field public x:Z

.field public y:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

.field public z:Lis0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Ljs0;

    .line 2
    new-instance v0, LaV;

    const-string v1, "Omnibox.EditUrlSuggestionAction"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LaV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljs0;->L:LaV;

    .line 3
    new-instance v0, LUU;

    const-string v1, "Omnibox.EditUrlSuggestion.Tap"

    invoke-direct {v0, v1}, LUU;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljs0;->M:LUU;

    .line 4
    new-instance v0, LUU;

    const-string v1, "Omnibox.EditUrlSuggestion.Copy"

    invoke-direct {v0, v1}, LUU;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljs0;->N:LUU;

    .line 5
    new-instance v0, LUU;

    const-string v1, "Omnibox.EditUrlSuggestion.Edit"

    invoke-direct {v0, v1}, LUU;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljs0;->O:LUU;

    .line 6
    new-instance v0, LUU;

    const-string v1, "Omnibox.EditUrlSuggestion.Share"

    invoke-direct {v0, v1}, LUU;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljs0;->P:LUU;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LTr0;Lhs0;Lis0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Ljs0;->w:Lhs0;

    .line 3
    iput-object p4, p0, Ljs0;->z:Lis0;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f070224

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Ljs0;->H:I

    .line 5
    iput-object p2, p0, Ljs0;->K:LTr0;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 2

    const-string v0, "layout_inflater"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const v0, 0x7f0e00ab

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;)Lle1;
    .locals 1

    .line 3
    new-instance p1, Lle1;

    sget-object v0, Lks0;->g:[LUd1;

    invoke-direct {p1, v0}, Lle1;-><init>([LUd1;)V

    return-object p1
.end method

.method public a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;I)V
    .locals 2

    .line 4
    sget-object p1, Lks0;->d:Lke1;

    invoke-virtual {p2, p1, p0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 5
    sget-object p1, Lks0;->c:Lke1;

    invoke-virtual {p2, p1, p0}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 6
    iget-boolean p1, p0, Ljs0;->G:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Ljs0;->J:LIa0;

    if-nez p1, :cond_0

    iget-object p1, p0, Ljs0;->I:Lorg/chromium/chrome/browser/profiles/Profile;

    if-eqz p1, :cond_0

    .line 7
    new-instance p3, LIa0;

    invoke-direct {p3, p1}, LIa0;-><init>(Lorg/chromium/chrome/browser/profiles/Profile;)V

    iput-object p3, p0, Ljs0;->J:LIa0;

    .line 8
    :cond_0
    iget-object p1, p0, Ljs0;->J:LIa0;

    if-eqz p1, :cond_1

    .line 9
    iget-object p3, p0, Ljs0;->y:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    .line 10
    iget-object p3, p3, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->i:Ljava/lang/String;

    .line 11
    iget v0, p0, Ljs0;->H:I

    new-instance v1, Lgs0;

    invoke-direct {v1, p0, p2}, Lgs0;-><init>(Ljs0;Lle1;)V

    invoke-virtual {p1, p3, v0, v1}, LIa0;->a(Ljava/lang/String;ILorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)Z

    .line 12
    :cond_1
    iget-object p1, p0, Ljs0;->B:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 13
    sget-object p3, Lks0;->a:Lke1;

    invoke-virtual {p2, p3, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 14
    sget-object p1, Lks0;->b:Lke1;

    iget-object p3, p0, Ljs0;->y:Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;

    .line 15
    iget-object p3, p3, Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;->i:Ljava/lang/String;

    .line 16
    invoke-virtual {p2, p1, p3}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 17
    throw p1
.end method

.method public b(Lorg/chromium/chrome/browser/omnibox/suggestions/OmniboxSuggestion;Lle1;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    throw p1
.end method
