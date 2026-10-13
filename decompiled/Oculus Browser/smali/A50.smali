.class public LA50;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static c:LA50;


# instance fields
.field public final a:Lcy0;

.field public b:I


# direct methods
.method public constructor <init>(Lcy0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LA50;->a:Lcy0;

    .line 3
    iget-object p1, p1, Lcy0;->a:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    const-string v1, "contextual_search_tap_triggered_promo_count"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 4
    iput p1, p0, LA50;->b:I

    .line 5
    iget-object v0, p0, LA50;->a:Lcy0;

    .line 6
    iget-object v0, v0, Lcy0;->a:Landroid/content/SharedPreferences;

    invoke-static {v0, v1, p1}, LZi;->a(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget v0, p0, LA50;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
