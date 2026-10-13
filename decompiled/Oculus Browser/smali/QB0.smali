.class public final synthetic LQB0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

.field public final x:LOB0;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;LOB0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQB0;->w:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    iput-object p2, p0, LQB0;->x:LOB0;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, LQB0;->w:Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;

    iget-object v0, p0, LQB0;->x:LOB0;

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {v0}, LOB0;->a()V

    .line 2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/website/ChosenObjectPreferences;->O()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
