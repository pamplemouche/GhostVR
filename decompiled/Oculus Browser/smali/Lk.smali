.class public final LLk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lft;


# instance fields
.field public final synthetic a:LYj;

.field public final synthetic b:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;LYj;)V
    .locals 0

    .line 1
    iput-object p1, p0, LLk;->b:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    iput-object p2, p0, LLk;->a:LYj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    iget-object v0, p0, LLk;->a:LYj;

    iput-object p1, v0, LYj;->b:Landroid/graphics/Bitmap;

    .line 2
    iget-object p1, p0, LLk;->b:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    .line 3
    iput-object v0, p1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->H:LYj;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->a()V

    return-void
.end method
