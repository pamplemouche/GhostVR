.class public Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements LDd1;


# instance fields
.field public final A:Lorg/chromium/content_public/browser/WebContents;

.field public final B:Lg11;

.field public final C:I

.field public final D:I

.field public final E:J

.field public final F:Lzs0;

.field public G:Landroid/widget/TextView;

.field public H:Landroid/widget/TextView;

.field public I:Landroid/view/ViewGroup;

.field public J:Landroid/view/ViewGroup;

.field public K:Landroid/widget/Button;

.field public L:Ljava/lang/String;

.field public final w:Landroid/content/Context;

.field public final x:LBd1;

.field public y:Lle1;

.field public final z:Landroid/widget/LinearLayout;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->w:Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    move-result-object v0

    invoke-virtual {v0}, LBg0;->o()LBd1;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->x:LBd1;

    .line 4
    iget-object p2, p2, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 5
    iput-object p2, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->A:Lorg/chromium/content_public/browser/WebContents;

    .line 6
    new-instance p2, Lzs0;

    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->w:Landroid/content/Context;

    invoke-direct {p2, v0}, Lzs0;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->F:Lzs0;

    .line 7
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->w:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->z:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070097

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->C:I

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070096

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->D:I

    .line 11
    iget-object p2, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->z:Landroid/widget/LinearLayout;

    iget v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->C:I

    sub-int p1, v0, p1

    invoke-virtual {p2, v0, v0, v0, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 12
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->A:Lorg/chromium/content_public/browser/WebContents;

    .line 13
    invoke-static {p0, p1}, LJ/N;->MbkP3gof(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p1

    .line 14
    iput-wide p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->E:J

    .line 15
    new-instance p1, LAs0;

    iget-object p2, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->A:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {p1, p0, p2}, LAs0;-><init>(Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;Lorg/chromium/content_public/browser/WebContents;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->B:Lg11;

    return-void
.end method

.method private addCertificateSection(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b00e7

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->I:Landroid/view/ViewGroup;

    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->w:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->G:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->G:Landroid/widget/TextView;

    const p2, 0x7f1401cb

    invoke-static {p1, p2}, LdT;->a(Landroid/widget/TextView;I)V

    .line 7
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->G:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->G:Landroid/widget/TextView;

    iget p2, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->D:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, p3, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 9
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->I:Landroid/view/ViewGroup;

    iget-object p2, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->G:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private addDescriptionSection(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->a(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b00e7

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->J:Landroid/view/ViewGroup;

    return-void
.end method

.method private addMoreInfoLink(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->w:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->H:Landroid/widget/TextView;

    const-string v1, "https://support.google.com/chrome?p=android_connection_info"

    .line 2
    iput-object v1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->L:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->H:Landroid/widget/TextView;

    const v0, 0x7f1401cb

    invoke-static {p1, v0}, LdT;->a(Landroid/widget/TextView;I)V

    .line 5
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->H:Landroid/widget/TextView;

    iget v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->D:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 6
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->H:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->J:Landroid/view/ViewGroup;

    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->H:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private addResetCertDecisionsButton(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/chromium/ui/widget/ButtonCompat;

    iget-object v1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->w:Landroid/content/Context;

    const v2, 0x7f140100

    invoke-direct {v0, v1, v2}, Lorg/chromium/ui/widget/ButtonCompat;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->K:Landroid/widget/Button;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->K:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->w:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->K:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 7
    iget v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->C:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 8
    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private showDialog()V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->w:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 3
    sget-object v1, LEd1;->q:[LUd1;

    .line 4
    invoke-static {v1}, Lle1;->a([LUd1;)Ljava/util/Map;

    move-result-object v1

    .line 5
    sget-object v2, LEd1;->a:Lfe1;

    .line 6
    new-instance v3, Lbe1;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lbe1;-><init>(LVd1;)V

    .line 7
    iput-object p0, v3, Lbe1;->a:Ljava/lang/Object;

    .line 8
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v2, LEd1;->f:Lke1;

    .line 10
    new-instance v3, Lbe1;

    invoke-direct {v3, v4}, Lbe1;-><init>(LVd1;)V

    .line 11
    iput-object v0, v3, Lbe1;->a:Ljava/lang/Object;

    .line 12
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, LEd1;->m:Lhe1;

    .line 14
    new-instance v2, LWd1;

    invoke-direct {v2, v4}, LWd1;-><init>(LVd1;)V

    const/4 v3, 0x1

    .line 15
    iput-boolean v3, v2, LWd1;->a:Z

    .line 16
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v0, Lle1;

    invoke-direct {v0, v1, v4}, Lle1;-><init>(Ljava/util/Map;LVd1;)V

    .line 18
    iput-object v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->y:Lle1;

    .line 19
    iget-object v1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->x:LBd1;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, LBd1;->a(Lle1;IZ)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->w:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e005f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00e6

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3
    invoke-static {p1}, LGZ;->a(I)I

    move-result p1

    .line 4
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f0b00e5

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const p1, 0x7f0b00e4

    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 9
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :cond_1
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->z:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public final a()V
    .locals 5

    const/4 v0, 0x3

    .line 17
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->a(I)V

    const/4 v0, 0x1

    .line 18
    :try_start_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->L:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "create_new_tab"

    .line 19
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.android.browser.application_id"

    .line 20
    iget-object v3, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->w:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    iget-object v2, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->w:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 22
    iget-object v4, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->L:Ljava/lang/String;

    aput-object v4, v2, v3

    aput-object v1, v2, v0

    const-string v0, "ConnectionInfoPopup"

    const-string v1, "Bad URI %s"

    invoke-static {v0, v1, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    .line 12
    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->x:LBd1;

    iget-object v1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->y:Lle1;

    invoke-virtual {v0, v1, p1}, LBd1;->a(Lle1;I)V

    return-void
.end method

.method public a(Lle1;I)V
    .locals 0

    .line 13
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->B:Lg11;

    invoke-virtual {p1}, Lg11;->destroy()V

    .line 14
    iget-wide p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->E:J

    .line 15
    invoke-static {p1, p2, p0}, LJ/N;->MwIta4Az(JLjava/lang/Object;)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->y:Lle1;

    return-void
.end method

.method public b(Lle1;I)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->K:Landroid/widget/Button;

    if-ne v0, p1, :cond_0

    .line 2
    iget-wide v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->E:J

    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->A:Lorg/chromium/content_public/browser/WebContents;

    .line 3
    invoke-static {v0, v1, p0, p1}, LJ/N;->MelNGyiY(JLjava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 4
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->a(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->G:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_3

    .line 6
    iget-object p1, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->A:Lorg/chromium/content_public/browser/WebContents;

    .line 7
    invoke-static {p1}, LJ/N;->M1JML7HW(Ljava/lang/Object;)[[B

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object v0

    check-cast v0, LKO0;

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->F:Lzs0;

    invoke-virtual {v0, p1}, Lzs0;->a([[B)V

    goto :goto_0

    .line 10
    :cond_2
    throw v1

    .line 11
    :cond_3
    iget-object v0, p0, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->H:Landroid/widget/TextView;

    if-ne v0, p1, :cond_5

    .line 12
    invoke-static {}, Lorg/chromium/chrome/browser/vr/VrModuleProvider;->a()LJO0;

    move-result-object p1

    check-cast p1, LKO0;

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/page_info/ConnectionInfoPopup;->a()V

    goto :goto_0

    .line 14
    :cond_4
    throw v1

    :cond_5
    :goto_0
    return-void
.end method
