.class public Li80;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field public b:Landroid/app/Notification;

.field public c:I

.field public d:Landroid/content/Context;


# direct methods
.method public constructor <init>(ILandroid/app/Notification;ILandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Li80;->a:I

    .line 3
    iput-object p2, p0, Li80;->b:Landroid/app/Notification;

    .line 4
    iput p3, p0, Li80;->c:I

    .line 5
    iput-object p4, p0, Li80;->d:Landroid/content/Context;

    return-void
.end method
