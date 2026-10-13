.class public final synthetic LWx0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/ButtonPreference;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/ButtonPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWx0;->w:Lorg/chromium/chrome/browser/preferences/ButtonPreference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, LWx0;->w:Lorg/chromium/chrome/browser/preferences/ButtonPreference;

    .line 1
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->B:Lmc;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lmc;->c(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method
