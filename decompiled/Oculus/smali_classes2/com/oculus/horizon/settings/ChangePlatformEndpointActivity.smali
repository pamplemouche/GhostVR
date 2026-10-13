.class public Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ChangePlatformEndpointActivity.java"


# instance fields
.field private mPlatformEndpoint:Lcom/google/android/material/textfield/TextInputLayout;

.field private mPrefs:Landroid/content/SharedPreferences;
    .annotation runtime Lcom/oculus/http/core/annotations/OculusApiSharedPrefs;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;)V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;)V
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/oculus/horizon/endpoint/HorizonEndpointModule;->$ul_$xXXandroid_content_SharedPreferences$xXXcom_oculus_http_core_annotations_OculusApiSharedPrefs$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->onSaveInput()V

    return-void
.end method

.method private onSaveInput()V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->mPlatformEndpoint:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/oculus/http/core/util/CustomApiEndpointValidator;->isSafeOculusUri(Ljava/lang/String;)Z

    move-result v1

    .line 79
    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->mPlatformEndpoint:Lcom/google/android/material/textfield/TextInputLayout;

    sget v2, Lcom/oculus/horizon/R$string;->settings_change_platform_input_error:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    const-string v1, "https://graph.oculus.com/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_custom_api_endpoint"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    :goto_0
    sget v0, Lcom/oculus/horizon/R$string;->settings_change_platform_success:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->finish()V

    .line 92
    return-void

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_custom_api_endpoint"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private refreshPlatformEndpoint()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_custom_api_endpoint"

    const-string v2, "https://graph.oculus.com/"

    .line 70
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->mPlatformEndpoint:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {p0, p0}, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;)V

    .line 37
    sget v0, Lcom/oculus/horizon/R$layout;->settings_platform_endpoint_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->setContentView(I)V

    .line 39
    sget v0, Lcom/oculus/horizon/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 40
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 41
    sget v1, Lcom/oculus/horizon/R$string;->settings_change_platform_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 42
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 43
    sget v1, Lcom/oculus/horizon/R$drawable;->close_button:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 45
    sget v0, Lcom/oculus/horizon/R$id;->save_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    .line 46
    new-instance v1, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity$1;-><init>(Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    sget v0, Lcom/oculus/horizon/R$id;->new_platform_endpoint:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->mPlatformEndpoint:Lcom/google/android/material/textfield/TextInputLayout;

    .line 54
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 59
    invoke-direct {p0}, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->refreshPlatformEndpoint()V

    .line 60
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/ChangePlatformEndpointActivity;->onBackPressed()V

    .line 65
    const/4 v0, 0x1

    return v0
.end method
