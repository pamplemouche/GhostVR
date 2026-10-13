.class public LLy0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic w:Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference;)V
    .locals 0

    .line 1
    iput-object p1, p0, LLy0;->w:Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, LLy0;->w:Lorg/chromium/chrome/browser/preferences/TextAndButtonPreference;

    .line 2
    iget-object v0, p1, Landroid/support/v7/preference/Preference;->B:Lmc;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lmc;->c(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method
