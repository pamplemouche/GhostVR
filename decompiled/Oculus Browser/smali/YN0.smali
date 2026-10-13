.class public LYN0;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:LBd1;

.field public c:Lle1;

.field public d:Z

.field public e:Lorg/chromium/base/Callback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZLorg/chromium/base/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LYN0;->a:Landroid/app/Activity;

    .line 3
    iput-boolean p2, p0, LYN0;->d:Z

    .line 4
    iput-object p3, p0, LYN0;->e:Lorg/chromium/base/Callback;

    return-void
.end method
