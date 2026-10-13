.class public final synthetic Ljy0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final w:Lorg/chromium/chrome/browser/preferences/LearnMorePreference;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/preferences/LearnMorePreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljy0;->w:Lorg/chromium/chrome/browser/preferences/LearnMorePreference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Ljy0;->w:Lorg/chromium/chrome/browser/preferences/LearnMorePreference;

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/preferences/LearnMorePreference;->r()V

    return-void
.end method
