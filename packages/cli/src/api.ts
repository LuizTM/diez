/**
 * A CLI action. Receives the arguments of a CLI command.
 */
export type CliAction = (command: any, ...args: string[]) => void;

/**
 * A generic interface for a CLI command option validator. Options can be either a boolean
 * (for flags like `--option`) or a string (for flags like `--option <option-value>`).
 */
export type CliOptionValidator = (value: string | boolean) => void;

/**
 * A generic interface for a CLI command option.
 */
export interface CliCommandOption {
  /**
   * The full name (`--longName`) of the command option. Should be specified without the leading dashes.
   */
  longName: string;
  /**
   * The description for the command option. Printed when the associated command is run with `--help`.
   */
  description: string;
  /**
   * An optional, one-character option alias. e.g. `-d` for `--dev`. Should be specified without the leading dash.
   */
  shortName?: string;
  /**
   * If provided, indicates that the option receives a string value. Without a value name, the option is assumed to
   * receive a boolean.
   */
  valueName?: string;
  /**
   * An optional validator which receives the call-time option. Errors emitted during validation will bubble up and
   * terminate the command.
   */
  validator?: CliOptionValidator;
}

/**
 * Provides a generic interface for a CLI command.
 */
export interface CliCommandProvider {
  /**
   * The name of the command.
   */
  name: string;
  /**
   * The command description.
   */
  description: string;
  /**
   * The action that should be executed when the command is invoked by name.
   */
  action: CliAction;
  /**
   * A set of options the command should receive. These are passed into the action as properties
   * of the first argument.
   */
  options?: CliCommandOption[];
}

/**
 * A specification for a Component compiler target binding.
 */
export interface TargetBinding {
  [targetName: string]: string;
}

/**
 * A Diez configuration, which can be provided by a module either as the `"diez"` key in `package.json` or in a separate
 * `.diezrc` file located at the project root.
 *
 * See [here](https://github.com/diez/diez/blob/master/packages/targets/.diezrc) for an example.
 */
export type DiezConfiguration = Partial<{
  /**
   * Paths to local providers associated
   */
  providers: Partial<{
    commands: Iterable<string>;
    targets: Iterable<string>;
  }>;
  /**
   * Bindings, which associate a namespaced component to a [[TargetBinding]].
   */
  bindings?: {
    [componentHash: string]: TargetBinding;
  };
}>;
