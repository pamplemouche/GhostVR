.class public Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:J

.field public final b:LDt0;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/WindowAndroid;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;->a:J

    .line 3
    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/chrome/browser/ChromeActivity;

    .line 4
    new-instance p2, LDt0;

    invoke-direct {p2, p1}, LDt0;-><init>(Lorg/chromium/chrome/browser/ChromeActivity;)V

    iput-object p2, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;->b:LDt0;

    return-void
.end method

.method public static create(Lorg/chromium/ui/base/WindowAndroid;J)Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;-><init>(Lorg/chromium/ui/base/WindowAndroid;J)V

    return-object v0
.end method

.method private destroy()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;->a:J

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;->b:LDt0;

    .line 3
    iget-object v1, v0, LDt0;->a:LBd1;

    iget-object v0, v0, LDt0;->d:Lle1;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, LBd1;->a(Lle1;I)V

    return-void
.end method


# virtual methods
.method public showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;->c:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;->b:LDt0;

    new-instance v1, LCt0;

    invoke-direct {v1, p0}, LCt0;-><init>(Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogBridge;)V

    .line 3
    iget-object v2, v0, LDt0;->b:LFt0;

    .line 4
    sget-object v3, LFt0;->c:Lke1;

    invoke-virtual {v2, v3, p1}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 5
    sget-object p1, LFt0;->d:Lke1;

    invoke-virtual {v2, p1, p2}, Lle1;->a(Lke1;Ljava/lang/Object;)V

    .line 6
    iget-object p1, v0, LDt0;->b:LFt0;

    iget-object p2, v0, LDt0;->c:Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogCustomView;

    .line 7
    sget-object v2, LFt0;->c:Lke1;

    .line 8
    invoke-virtual {p1, v2}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    iget-object v3, p2, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogCustomView;->w:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    sget-object v2, LFt0;->d:Lke1;

    .line 11
    invoke-virtual {p1, v2}, Lle1;->a(Lfe1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 12
    iget-object p2, p2, Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogCustomView;->x:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, v0, LDt0;->c:Lorg/chromium/chrome/browser/password_manager/PasswordGenerationDialogCustomView;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 15
    new-instance v2, LXd1;

    sget-object v3, LEd1;->q:[LUd1;

    invoke-direct {v2, v3}, LXd1;-><init>([LUd1;)V

    sget-object v3, LEd1;->a:Lfe1;

    new-instance v4, LEt0;

    invoke-direct {v4, v1}, LEt0;-><init>(Lorg/chromium/base/Callback;)V

    .line 16
    invoke-virtual {v2, v3, v4}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object v1, LEd1;->c:Lke1;

    const v3, 0x7f13048c

    .line 17
    invoke-virtual {v2, v1, p2, v3}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object v1, LEd1;->f:Lke1;

    .line 18
    invoke-virtual {v2, v1, p1}, LXd1;->a(Lfe1;Ljava/lang/Object;)LXd1;

    sget-object p1, LEd1;->g:Lke1;

    const v1, 0x7f13048d

    .line 19
    invoke-virtual {v2, p1, p2, v1}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    sget-object p1, LEd1;->j:Lke1;

    const v1, 0x7f13048b

    .line 20
    invoke-virtual {v2, p1, p2, v1}, LXd1;->a(Lfe1;Landroid/content/res/Resources;I)LXd1;

    .line 21
    invoke-virtual {v2}, LXd1;->a()Lle1;

    move-result-object p1

    iput-object p1, v0, LDt0;->d:Lle1;

    .line 22
    iget-object p2, v0, LDt0;->a:LBd1;

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p2, p1, v0, v0}, LBd1;->a(Lle1;IZ)V

    return-void
.end method
