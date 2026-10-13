.class public final synthetic LgW0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LKc1;


# instance fields
.field public final a:Lorg/chromium/content/browser/ContactsDialogHost;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/ContactsDialogHost;ZZZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LgW0;->a:Lorg/chromium/content/browser/ContactsDialogHost;

    iput-boolean p2, p0, LgW0;->b:Z

    iput-boolean p3, p0, LgW0;->c:Z

    iput-boolean p4, p0, LgW0;->d:Z

    iput-boolean p5, p0, LgW0;->e:Z

    iput-object p6, p0, LgW0;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;[I)V
    .locals 8

    iget-object v7, p0, LgW0;->a:Lorg/chromium/content/browser/ContactsDialogHost;

    iget-boolean v2, p0, LgW0;->b:Z

    iget-boolean v3, p0, LgW0;->c:Z

    iget-boolean v4, p0, LgW0;->d:Z

    iget-boolean v5, p0, LgW0;->e:Z

    iget-object v6, p0, LgW0;->f:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    array-length v0, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    const-string v1, "android.permission.READ_CONTACTS"

    .line 2
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    aget p1, p2, v0

    if-nez p1, :cond_0

    .line 3
    iget-object p1, v7, Lorg/chromium/content/browser/ContactsDialogHost;->b:Lorg/chromium/ui/base/WindowAndroid;

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    move-object v1, v7

    invoke-static/range {v0 .. v6}, Lwc1;->a(Landroid/content/Context;Lbc1;ZZZZLjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    iget-wide p1, v7, Lorg/chromium/content/browser/ContactsDialogHost;->a:J

    .line 5
    invoke-static {p1, p2}, LJ/N;->MOM50EIZ(J)V

    goto :goto_0

    .line 6
    :cond_0
    iget-wide p1, v7, Lorg/chromium/content/browser/ContactsDialogHost;->a:J

    .line 7
    invoke-static {p1, p2}, LJ/N;->MOM50EIZ(J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 8
    throw p1
.end method
