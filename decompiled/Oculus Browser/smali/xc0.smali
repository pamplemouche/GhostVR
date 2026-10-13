.class public Lxc0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lwc0;

.field public final b:Landroid/view/ViewStub;

.field public final c:LpI0;

.field public final d:Lorg/chromium/ui/base/WindowAndroid;

.field public final e:Landroid/view/ActionMode$Callback;

.field public final f:LWT;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;LpI0;Lorg/chromium/ui/base/WindowAndroid;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxc0;->b:Landroid/view/ViewStub;

    .line 3
    iput-object p2, p0, Lxc0;->c:LpI0;

    .line 4
    iput-object p3, p0, Lxc0;->d:Lorg/chromium/ui/base/WindowAndroid;

    .line 5
    iput-object p4, p0, Lxc0;->e:Landroid/view/ActionMode$Callback;

    .line 6
    new-instance p1, LWT;

    invoke-direct {p1}, LWT;-><init>()V

    iput-object p1, p0, Lxc0;->f:LWT;

    return-void
.end method
