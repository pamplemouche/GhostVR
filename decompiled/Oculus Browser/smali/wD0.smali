.class public LwD0;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, LwD0;->b:Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;

    iput-object p2, p0, LwD0;->a:Landroid/content/Context;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, LpF0;->d()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, LwD0;->b:Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;

    iget-object v0, p0, LwD0;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;->a(Lorg/chromium/chrome/browser/services/AccountsChangedReceiver;Landroid/content/Context;)V

    return-void
.end method
